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
include tests/CMakeFiles/prof_qrencode.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/prof_qrencode.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/prof_qrencode.dir/flags.make

tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o: tests/CMakeFiles/prof_qrencode.dir/flags.make
tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o: tests/prof_qrencode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o"
	cd /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o   -c /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests/prof_qrencode.c

tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/prof_qrencode.dir/prof_qrencode.c.i"
	cd /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests/prof_qrencode.c > CMakeFiles/prof_qrencode.dir/prof_qrencode.c.i

tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/prof_qrencode.dir/prof_qrencode.c.s"
	cd /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests/prof_qrencode.c -o CMakeFiles/prof_qrencode.dir/prof_qrencode.c.s

tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o.requires:

.PHONY : tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o.requires

tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o.provides: tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o.requires
	$(MAKE) -f tests/CMakeFiles/prof_qrencode.dir/build.make tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o.provides.build
.PHONY : tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o.provides

tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o.provides.build: tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o


# Object files for target prof_qrencode
prof_qrencode_OBJECTS = \
"CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o"

# External object files for target prof_qrencode
prof_qrencode_EXTERNAL_OBJECTS =

tests/prof_qrencode: tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o
tests/prof_qrencode: tests/CMakeFiles/prof_qrencode.dir/build.make
tests/prof_qrencode: tests/libcommon.a
tests/prof_qrencode: libqrencode.a
tests/prof_qrencode: tests/CMakeFiles/prof_qrencode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable prof_qrencode"
	cd /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/prof_qrencode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/prof_qrencode.dir/build: tests/prof_qrencode

.PHONY : tests/CMakeFiles/prof_qrencode.dir/build

tests/CMakeFiles/prof_qrencode.dir/requires: tests/CMakeFiles/prof_qrencode.dir/prof_qrencode.c.o.requires

.PHONY : tests/CMakeFiles/prof_qrencode.dir/requires

tests/CMakeFiles/prof_qrencode.dir/clean:
	cd /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests && $(CMAKE_COMMAND) -P CMakeFiles/prof_qrencode.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/prof_qrencode.dir/clean

tests/CMakeFiles/prof_qrencode.dir/depend:
	cd /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2 /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2 /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests /home/ndex/Work/QUANTAEX19/Project/NBC/git-project/qrencode-4.0.2/tests/CMakeFiles/prof_qrencode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/prof_qrencode.dir/depend
