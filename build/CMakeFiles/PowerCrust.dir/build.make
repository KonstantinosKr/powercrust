# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/konstantinos/Devel/powercrust

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/konstantinos/Devel/powercrust/build

# Include any dependencies generated for this target.
include CMakeFiles/powercrust.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/powercrust.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/powercrust.dir/flags.make

CMakeFiles/powercrust.dir/powercrust.cpp.o: CMakeFiles/powercrust.dir/flags.make
CMakeFiles/powercrust.dir/powercrust.cpp.o: ../powercrust.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/konstantinos/Devel/powercrust/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/powercrust.dir/powercrust.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/powercrust.dir/powercrust.cpp.o -c /Users/konstantinos/Devel/powercrust/powercrust.cpp

CMakeFiles/powercrust.dir/powercrust.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/powercrust.dir/powercrust.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/konstantinos/Devel/powercrust/powercrust.cpp > CMakeFiles/powercrust.dir/powercrust.cpp.i

CMakeFiles/powercrust.dir/powercrust.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/powercrust.dir/powercrust.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/konstantinos/Devel/powercrust/powercrust.cpp -o CMakeFiles/powercrust.dir/powercrust.cpp.s

CMakeFiles/powercrust.dir/powercrust.cpp.o.requires:

.PHONY : CMakeFiles/powercrust.dir/powercrust.cpp.o.requires

CMakeFiles/powercrust.dir/powercrust.cpp.o.provides: CMakeFiles/powercrust.dir/powercrust.cpp.o.requires
	$(MAKE) -f CMakeFiles/powercrust.dir/build.make CMakeFiles/powercrust.dir/powercrust.cpp.o.provides.build
.PHONY : CMakeFiles/powercrust.dir/powercrust.cpp.o.provides

CMakeFiles/powercrust.dir/powercrust.cpp.o.provides.build: CMakeFiles/powercrust.dir/powercrust.cpp.o


# Object files for target powercrust
powercrust_OBJECTS = \
"CMakeFiles/powercrust.dir/powercrust.cpp.o"

# External object files for target powercrust
powercrust_EXTERNAL_OBJECTS =

libpowercrust.a: CMakeFiles/powercrust.dir/powercrust.cpp.o
libpowercrust.a: CMakeFiles/powercrust.dir/build.make
libpowercrust.a: CMakeFiles/powercrust.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/konstantinos/Devel/powercrust/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libpowercrust.a"
	$(CMAKE_COMMAND) -P CMakeFiles/powercrust.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/powercrust.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/powercrust.dir/build: libpowercrust.a

.PHONY : CMakeFiles/powercrust.dir/build

CMakeFiles/powercrust.dir/requires: CMakeFiles/powercrust.dir/powercrust.cpp.o.requires

.PHONY : CMakeFiles/powercrust.dir/requires

CMakeFiles/powercrust.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/powercrust.dir/cmake_clean.cmake
.PHONY : CMakeFiles/powercrust.dir/clean

CMakeFiles/powercrust.dir/depend:
	cd /Users/konstantinos/Devel/powercrust/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/konstantinos/Devel/powercrust /Users/konstantinos/Devel/powercrust /Users/konstantinos/Devel/powercrust/build /Users/konstantinos/Devel/powercrust/build /Users/konstantinos/Devel/powercrust/build/CMakeFiles/powercrust.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/powercrust.dir/depend

