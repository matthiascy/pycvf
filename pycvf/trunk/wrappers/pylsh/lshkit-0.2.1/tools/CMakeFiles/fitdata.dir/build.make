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
include tools/CMakeFiles/fitdata.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/fitdata.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/fitdata.dir/flags.make

tools/CMakeFiles/fitdata.dir/fitdata.cpp.o: tools/CMakeFiles/fitdata.dir/flags.make
tools/CMakeFiles/fitdata.dir/fitdata.cpp.o: tools/fitdata.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/CMakeFiles/fitdata.dir/fitdata.cpp.o"
	cd /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/fitdata.dir/fitdata.cpp.o -c /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools/fitdata.cpp

tools/CMakeFiles/fitdata.dir/fitdata.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fitdata.dir/fitdata.cpp.i"
	cd /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools/fitdata.cpp > CMakeFiles/fitdata.dir/fitdata.cpp.i

tools/CMakeFiles/fitdata.dir/fitdata.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fitdata.dir/fitdata.cpp.s"
	cd /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools/fitdata.cpp -o CMakeFiles/fitdata.dir/fitdata.cpp.s

tools/CMakeFiles/fitdata.dir/fitdata.cpp.o.requires:
.PHONY : tools/CMakeFiles/fitdata.dir/fitdata.cpp.o.requires

tools/CMakeFiles/fitdata.dir/fitdata.cpp.o.provides: tools/CMakeFiles/fitdata.dir/fitdata.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/fitdata.dir/build.make tools/CMakeFiles/fitdata.dir/fitdata.cpp.o.provides.build
.PHONY : tools/CMakeFiles/fitdata.dir/fitdata.cpp.o.provides

tools/CMakeFiles/fitdata.dir/fitdata.cpp.o.provides.build: tools/CMakeFiles/fitdata.dir/fitdata.cpp.o
.PHONY : tools/CMakeFiles/fitdata.dir/fitdata.cpp.o.provides.build

# Object files for target fitdata
fitdata_OBJECTS = \
"CMakeFiles/fitdata.dir/fitdata.cpp.o"

# External object files for target fitdata
fitdata_EXTERNAL_OBJECTS =

bin/fitdata: tools/CMakeFiles/fitdata.dir/fitdata.cpp.o
bin/fitdata: lib/liblshkit.a
bin/fitdata: /usr/lib/libboost_program_options-mt.a
bin/fitdata: tools/CMakeFiles/fitdata.dir/build.make
bin/fitdata: tools/CMakeFiles/fitdata.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/fitdata"
	cd /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fitdata.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/fitdata.dir/build: bin/fitdata
.PHONY : tools/CMakeFiles/fitdata.dir/build

tools/CMakeFiles/fitdata.dir/requires: tools/CMakeFiles/fitdata.dir/fitdata.cpp.o.requires
.PHONY : tools/CMakeFiles/fitdata.dir/requires

tools/CMakeFiles/fitdata.dir/clean:
	cd /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools && $(CMAKE_COMMAND) -P CMakeFiles/fitdata.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/fitdata.dir/clean

tools/CMakeFiles/fitdata.dir/depend:
	cd /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1 /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1 /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools /home/tranx/pycvfext/wrappers/pylsh/lshkit-0.2.1/tools/CMakeFiles/fitdata.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/fitdata.dir/depend

