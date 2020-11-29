cmake_minimum_required(VERSION 3.17)
project(net_list C)

set(CMAKE_C_STANDARD 11)

add_executable(net_list
        unix_list.c)
