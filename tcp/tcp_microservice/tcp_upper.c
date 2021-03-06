#include "../../useful_headers/headers.h"
#include "../../useful_functions/socket_fun.h"
#include <ctype.h>


int main(){

  printf("Configuring local address...\n");
  struct addrinfo hints;
  hints = configure_tcp_server(hints);

  struct addrinfo *bind_address;
  getaddrinfo(0, "8080", &hints, &bind_address);

  printf("Creating socket...\n");
  SOCKET socket_listen;
  socket_listen = create_socket(bind_address);
  
  printf("Bind socket to local address...\n");
  bind_socket(socket_listen, bind_address);
  freeaddrinfo(bind_address);

  printf("Listening...\n");
  if (listen(socket_listen, 10)< 0){
    fprintf(stderr, "listen() failed. (%d)\n", GETSOCKETERRNO());
    return 1;
  }

  fd_set master;
  FD_ZERO(&master);
  FD_SET(socket_listen, &master);
  SOCKET max_socket = socket_listen;

  printf("Waiting for connections...\n");

  while(1){
    fd_set reads;
    reads = master;
    if(select(max_socket+1, &reads, 0, 0, 0) < 0){
      fprintf(stderr, "select() failed. (%d)\n", GETSOCKETERRNO());
      return 1;
    } 
    SOCKET i;
    for (i = 1; i <= max_socket; ++i){
      if (FD_ISSET(i, &reads)){
        
        if (i == socket_listen){
          struct sockaddr_storage client_address;
          socklen_t client_len = sizeof(client_address);
          SOCKET socket_client = accept(socket_listen, 
              (struct sockaddr*) &client_address, 
              &client_len);
          if (!ISVALIDSOCKET(socket_client)){
            fprintf(stderr, "accept() failed. (%d)\n", GETSOCKETERRNO());
            return 1;
          }
          FD_SET(socket_client, &master);
          
          if(socket_client > max_socket)
            max_socket = socket_client;
          
          char address_buffer[100];
          getnameinfo((struct sockaddr*)&client_address,
              client_len,
              address_buffer, sizeof(address_buffer), 0, 0,
              NI_NUMERICHOST);
           
          printf("New connection from %s\n", address_buffer);
          
        } else {
          char read[1024];
          int bytes_received = recv(i, read, 1024, 0);
          if(bytes_received < 1){
            FD_CLR(i, &master);
              CLOSESOCKET(i);
              continue;
          }
        to_upper(read, bytes_received); 
        send(i, read, bytes_received, 0);
        }
      }
    }
  }
  
  printf("Closing listening socket\n");
  CLOSESOCKET(socket_listen);
  printf("Finished.\n");
  return 0;
}
