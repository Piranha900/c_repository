# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/piranha900/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/203.5981.106/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/piranha900/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/203.5981.106/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/piranha900/git_folder/C/net_list

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/piranha900/git_folder/C/net_list/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/net_list.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/net_list.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/net_list.dir/flags.make

CMakeFiles/net_list.dir/unix_list.c.o: CMakeFiles/net_list.dir/flags.make
CMakeFiles/net_list.dir/unix_list.c.o: ../unix_list.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/piranha900/git_folder/C/net_list/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/net_list.dir/unix_list.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/net_list.dir/unix_list.c.o   -c /home/piranha900/git_folder/C/net_list/unix_list.c

CMakeFiles/net_list.dir/unix_list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/net_list.dir/unix_list.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/piranha900/git_folder/C/net_list/unix_list.c > CMakeFiles/net_list.dir/unix_list.c.i

CMakeFiles/net_list.dir/unix_list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/net_list.dir/unix_list.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/piranha900/git_folder/C/net_list/unix_list.c -o CMakeFiles/net_list.dir/unix_list.c.s

# Object files for target net_list
net_list_OBJECTS = \
"CMakeFiles/net_list.dir/unix_list.c.o"

# External object files for target net_list
net_list_EXTERNAL_OBJECTS =

net_list: CMakeFiles/net_list.dir/unix_list.c.o
net_list: CMakeFiles/net_list.dir/build.make
net_list: CMakeFiles/net_list.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/piranha900/git_folder/C/net_list/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable net_list"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/net_list.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/net_list.dir/build: net_list

.PHONY : CMakeFiles/net_list.dir/build

CMakeFiles/net_list.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/net_list.dir/cmake_clean.cmake
.PHONY : CMakeFiles/net_list.dir/clean

CMakeFiles/net_list.dir/depend:
	cd /home/piranha900/git_folder/C/net_list/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/piranha900/git_folder/C/net_list /home/piranha900/git_folder/C/net_list /home/piranha900/git_folder/C/net_list/cmake-build-debug /home/piranha900/git_folder/C/net_list/cmake-build-debug /home/piranha900/git_folder/C/net_list/cmake-build-debug/CMakeFiles/net_list.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/net_list.dir/depend
