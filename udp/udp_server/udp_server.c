#include "../../useful_functions/socket_fun.h"
#include "../../useful_headers/headers.h"

int main(){

  printf("Configuring local address...\n");
  struct addrinfo hints;
  hints = configure_udp_server(hints);
  
  struct addrinfo *bind_address;
  getaddrinfo(0, "8080", &hints, &bind_address);
  
  printf("Creating socket...\n");
  SOCKET socket_listen = create_socket(bind_address);

  printf("Binding socket to local address...\n");
  bind_socket(socket_listen, bind_address);
  freeaddrinfo(bind_address);
  
  struct sockaddr_storage client_address;
  socklen_t client_len = sizeof(client_address);
  char read[1024];
  int bytes_received = recvfrom(socket_listen,
      read, 1024, 0,
      (struct sockaddr*) &client_address, &client_len);

  printf("Received (%d bytes): %.*s\n", bytes_received, bytes_received, read);

  printf("Remote address is: \n");
  char address_buffer[100];
  char service_buffer[100];

  getnameinfo((struct sockaddr*) &client_address, 
      client_len,
      address_buffer, sizeof(address_buffer),
      service_buffer, sizeof(service_buffer),
      NI_NUMERICHOST | NI_NUMERICSERV);
  printf("%s %s\n", address_buffer, service_buffer);

  CLOSESOCKET(socket_listen);
  printf("Finished.\n");
  return 0;
}
