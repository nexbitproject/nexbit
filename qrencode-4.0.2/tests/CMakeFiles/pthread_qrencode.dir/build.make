# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2

# Include any dependencies generated for this target.
include tests/CMakeFiles/pthread_qrencode.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/pthread_qrencode.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/pthread_qrencode.dir/flags.make

tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o: tests/CMakeFiles/pthread_qrencode.dir/flags.make
tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o: tests/pthread_qrencode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o"
	cd /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o   -c /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests/pthread_qrencode.c

tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.i"
	cd /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests/pthread_qrencode.c > CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.i

tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.s"
	cd /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests/pthread_qrencode.c -o CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.s

tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o.requires:

.PHONY : tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o.requires

tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o.provides: tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o.requires
	$(MAKE) -f tests/CMakeFiles/pthread_qrencode.dir/build.make tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o.provides.build
.PHONY : tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o.provides

tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o.provides.build: tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o


# Object files for target pthread_qrencode
pthread_qrencode_OBJECTS = \
"CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o"

# External object files for target pthread_qrencode
pthread_qrencode_EXTERNAL_OBJECTS =

tests/pthread_qrencode: tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o
tests/pthread_qrencode: tests/CMakeFiles/pthread_qrencode.dir/build.make
tests/pthread_qrencode: tests/libcommon.a
tests/pthread_qrencode: libqrencode.a
tests/pthread_qrencode: tests/CMakeFiles/pthread_qrencode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pthread_qrencode"
	cd /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pthread_qrencode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/pthread_qrencode.dir/build: tests/pthread_qrencode

.PHONY : tests/CMakeFiles/pthread_qrencode.dir/build

tests/CMakeFiles/pthread_qrencode.dir/requires: tests/CMakeFiles/pthread_qrencode.dir/pthread_qrencode.c.o.requires

.PHONY : tests/CMakeFiles/pthread_qrencode.dir/requires

tests/CMakeFiles/pthread_qrencode.dir/clean:
	cd /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests && $(CMAKE_COMMAND) -P CMakeFiles/pthread_qrencode.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/pthread_qrencode.dir/clean

tests/CMakeFiles/pthread_qrencode.dir/depend:
	cd /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2 /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2 /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests/CMakeFiles/pthread_qrencode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/pthread_qrencode.dir/depend
