headers.o: ../useful_headers/headers.h
					gcc -c ../useful_headers/headers.h

main.o: tcp_client.c 
				gcc -c tcp_client.c

testprog.o: tcp_client.o headers.o
						gcc tcp_client.o headers.o -o testprog
