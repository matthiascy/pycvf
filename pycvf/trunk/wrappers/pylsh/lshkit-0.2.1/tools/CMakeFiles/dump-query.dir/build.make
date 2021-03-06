# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.6

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1

# Include any dependencies generated for this target.
include tools/CMakeFiles/dump-query.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/dump-query.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/dump-query.dir/flags.make

tools/CMakeFiles/dump-query.dir/dump-query.cpp.o: tools/CMakeFiles/dump-query.dir/flags.make
tools/CMakeFiles/dump-query.dir/dump-query.cpp.o: tools/dump-query.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/CMakeFiles/dump-query.dir/dump-query.cpp.o"
	cd /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/dump-query.dir/dump-query.cpp.o -c /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools/dump-query.cpp

tools/CMakeFiles/dump-query.dir/dump-query.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dump-query.dir/dump-query.cpp.i"
	cd /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools/dump-query.cpp > CMakeFiles/dump-query.dir/dump-query.cpp.i

tools/CMakeFiles/dump-query.dir/dump-query.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dump-query.dir/dump-query.cpp.s"
	cd /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools/dump-query.cpp -o CMakeFiles/dump-query.dir/dump-query.cpp.s

tools/CMakeFiles/dump-query.dir/dump-query.cpp.o.requires:
.PHONY : tools/CMakeFiles/dump-query.dir/dump-query.cpp.o.requires

tools/CMakeFiles/dump-query.dir/dump-query.cpp.o.provides: tools/CMakeFiles/dump-query.dir/dump-query.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/dump-query.dir/build.make tools/CMakeFiles/dump-query.dir/dump-query.cpp.o.provides.build
.PHONY : tools/CMakeFiles/dump-query.dir/dump-query.cpp.o.provides

tools/CMakeFiles/dump-query.dir/dump-query.cpp.o.provides.build: tools/CMakeFiles/dump-query.dir/dump-query.cpp.o
.PHONY : tools/CMakeFiles/dump-query.dir/dump-query.cpp.o.provides.build

# Object files for target dump-query
dump__query_OBJECTS = \
"CMakeFiles/dump-query.dir/dump-query.cpp.o"

# External object files for target dump-query
dump__query_EXTERNAL_OBJECTS =

bin/dump-query: tools/CMakeFiles/dump-query.dir/dump-query.cpp.o
bin/dump-query: lib/liblshkit.a
bin/dump-query: /usr/lib/libboost_program_options-mt.a
bin/dump-query: tools/CMakeFiles/dump-query.dir/build.make
bin/dump-query: tools/CMakeFiles/dump-query.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/dump-query"
	cd /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dump-query.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/dump-query.dir/build: bin/dump-query
.PHONY : tools/CMakeFiles/dump-query.dir/build

tools/CMakeFiles/dump-query.dir/requires: tools/CMakeFiles/dump-query.dir/dump-query.cpp.o.requires
.PHONY : tools/CMakeFiles/dump-query.dir/requires

tools/CMakeFiles/dump-query.dir/clean:
	cd /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools && $(CMAKE_COMMAND) -P CMakeFiles/dump-query.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/dump-query.dir/clean

tools/CMakeFiles/dump-query.dir/depend:
	cd /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1 /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1 /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools/CMakeFiles/dump-query.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/dump-query.dir/depend

