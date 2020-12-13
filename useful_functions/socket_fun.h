#include "../useful_headers/headers.h"
#include <ctype.h>


int bind_socket(SOCKET socket, struct addrinfo *bind_addr){
    if (bind(socket,
        bind_addr->ai_addr, bind_addr->ai_addrlen)){
    fprintf(stderr, "bind() failed. (%d)\n", GETSOCKETERRNO());
    return 1;
  }
}

void to_upper(char *word, int bytes){
  int j;
  for (j=0; j < bytes; ++j){
    word[j] = toupper(word[j]);
  }
}

struct addrinfo configure_tcp_server(struct addrinfo hints){
  memset(&hints, 0, sizeof(hints));
  hints.ai_family = AF_INET;
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_flags = AI_PASSIVE;
  return hints;
}

struct addrinfo configure_udp_server(struct addrinfo hints){
  memset(&hints, 0, sizeof(hints));
  hints.ai_family = AF_INET;
  hints.ai_socktype = SOCK_DGRAM;
  hints.ai_flags = AI_PASSIVE;
  return hints;
}

SOCKET create_socket(struct addrinfo *bind_address) {
  SOCKET socket_listen;
  socket_listen = socket(bind_address->ai_family,
      bind_address->ai_socktype,
      bind_address->ai_protocol);
  if (!ISVALIDSOCKET(socket_listen)){
    fprintf(stderr, "socket() failed. (%d)\n", GETSOCKETERRNO());
    return 1;
  }
  return socket_listen;
}
