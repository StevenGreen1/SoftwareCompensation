# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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
CMAKE_COMMAND = /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/CMake/2.8.5/bin/cmake

# The command to remove a file.
RM = /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/CMake/2.8.5/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/CMake/2.8.5/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build

# Include any dependencies generated for this target.
include CMakeFiles/MarlinPandora.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MarlinPandora.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MarlinPandora.dir/flags.make

CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o: CMakeFiles/MarlinPandora.dir/flags.make
CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o: ../src/CaloHitCreator.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o"
	/usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o -c /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/CaloHitCreator.cc

CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.i"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/CaloHitCreator.cc > CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.i

CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.s"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/CaloHitCreator.cc -o CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.s

CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o.requires:
.PHONY : CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o.requires

CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o.provides: CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o.requires
	$(MAKE) -f CMakeFiles/MarlinPandora.dir/build.make CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o.provides.build
.PHONY : CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o.provides

CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o.provides.build: CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o

CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o: CMakeFiles/MarlinPandora.dir/flags.make
CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o: ../src/MCParticleCreator.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o"
	/usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o -c /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/MCParticleCreator.cc

CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.i"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/MCParticleCreator.cc > CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.i

CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.s"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/MCParticleCreator.cc -o CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.s

CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o.requires:
.PHONY : CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o.requires

CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o.provides: CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o.requires
	$(MAKE) -f CMakeFiles/MarlinPandora.dir/build.make CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o.provides.build
.PHONY : CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o.provides

CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o.provides.build: CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o

CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o: CMakeFiles/MarlinPandora.dir/flags.make
CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o: ../src/GeometryCreator.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o"
	/usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o -c /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/GeometryCreator.cc

CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.i"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/GeometryCreator.cc > CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.i

CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.s"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/GeometryCreator.cc -o CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.s

CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o.requires:
.PHONY : CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o.requires

CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o.provides: CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o.requires
	$(MAKE) -f CMakeFiles/MarlinPandora.dir/build.make CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o.provides.build
.PHONY : CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o.provides

CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o.provides.build: CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o

CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o: CMakeFiles/MarlinPandora.dir/flags.make
CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o: ../src/PfoCreator.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o"
	/usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o -c /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/PfoCreator.cc

CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.i"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/PfoCreator.cc > CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.i

CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.s"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/PfoCreator.cc -o CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.s

CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o.requires:
.PHONY : CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o.requires

CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o.provides: CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o.requires
	$(MAKE) -f CMakeFiles/MarlinPandora.dir/build.make CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o.provides.build
.PHONY : CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o.provides

CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o.provides.build: CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o

CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o: CMakeFiles/MarlinPandora.dir/flags.make
CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o: ../src/ExternalClusteringAlgorithm.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o"
	/usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o -c /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/ExternalClusteringAlgorithm.cc

CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.i"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/ExternalClusteringAlgorithm.cc > CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.i

CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.s"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/ExternalClusteringAlgorithm.cc -o CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.s

CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o.requires:
.PHONY : CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o.requires

CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o.provides: CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o.requires
	$(MAKE) -f CMakeFiles/MarlinPandora.dir/build.make CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o.provides.build
.PHONY : CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o.provides

CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o.provides.build: CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o

CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o: CMakeFiles/MarlinPandora.dir/flags.make
CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o: ../src/EnergyCorrectionSC.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o"
	/usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o -c /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/EnergyCorrectionSC.cc

CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.i"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/EnergyCorrectionSC.cc > CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.i

CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.s"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/EnergyCorrectionSC.cc -o CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.s

CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o.requires:
.PHONY : CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o.requires

CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o.provides: CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o.requires
	$(MAKE) -f CMakeFiles/MarlinPandora.dir/build.make CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o.provides.build
.PHONY : CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o.provides

CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o.provides.build: CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o

CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o: CMakeFiles/MarlinPandora.dir/flags.make
CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o: ../src/CellEnergyAlgorithm.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o"
	/usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o -c /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/CellEnergyAlgorithm.cc

CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.i"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/CellEnergyAlgorithm.cc > CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.i

CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.s"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/CellEnergyAlgorithm.cc -o CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.s

CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o.requires:
.PHONY : CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o.requires

CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o.provides: CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o.requires
	$(MAKE) -f CMakeFiles/MarlinPandora.dir/build.make CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o.provides.build
.PHONY : CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o.provides

CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o.provides.build: CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o

CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o: CMakeFiles/MarlinPandora.dir/flags.make
CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o: ../src/PandoraPFANewProcessor.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o"
	/usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o -c /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/PandoraPFANewProcessor.cc

CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.i"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/PandoraPFANewProcessor.cc > CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.i

CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.s"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/PandoraPFANewProcessor.cc -o CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.s

CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o.requires:
.PHONY : CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o.requires

CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o.provides: CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o.requires
	$(MAKE) -f CMakeFiles/MarlinPandora.dir/build.make CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o.provides.build
.PHONY : CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o.provides

CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o.provides.build: CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o

CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o: CMakeFiles/MarlinPandora.dir/flags.make
CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o: ../src/TrackCreator.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o"
	/usr/lib64/ccache/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o -c /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/TrackCreator.cc

CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.i"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/TrackCreator.cc > CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.i

CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.s"
	/usr/lib64/ccache/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/src/TrackCreator.cc -o CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.s

CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o.requires:
.PHONY : CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o.requires

CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o.provides: CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o.requires
	$(MAKE) -f CMakeFiles/MarlinPandora.dir/build.make CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o.provides.build
.PHONY : CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o.provides

CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o.provides.build: CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o

# Object files for target MarlinPandora
MarlinPandora_OBJECTS = \
"CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o" \
"CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o" \
"CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o" \
"CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o" \
"CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o" \
"CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o" \
"CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o" \
"CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o" \
"CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o"

# External object files for target MarlinPandora
MarlinPandora_EXTERNAL_OBJECTS =

lib/libMarlinPandora.so.02.02.00: CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o
lib/libMarlinPandora.so.02.02.00: CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o
lib/libMarlinPandora.so.02.02.00: CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o
lib/libMarlinPandora.so.02.02.00: CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o
lib/libMarlinPandora.so.02.02.00: CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o
lib/libMarlinPandora.so.02.02.00: CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o
lib/libMarlinPandora.so.02.02.00: CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o
lib/libMarlinPandora.so.02.02.00: CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o
lib/libMarlinPandora.so.02.02.00: CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/Marlin/v01-06/lib/libMarlin.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/lcio/v02-06/lib/liblcio.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/lcio/v02-06/lib/libsio.so
lib/libMarlinPandora.so.02.02.00: /usr/lib64/libz.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/gear/v01-04-02/lib/libgearsurf.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/gear/v01-04-02/lib/libgear.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/gear/v01-04-02/lib/libgearxml.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/CLHEP/2.1.4.1/lib/libCLHEP.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/ilcutil/v01-02-01/lib/libstreamlog.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/MarlinUtil/v01-09/lib/libMarlinUtil.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/CED/v01-09-01/lib/libCED.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/CLHEP/2.1.4.1/lib/libCLHEP.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/PandoraPFANew/v02-00-00/lib/libPandoraSDK.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/PandoraPFANew/v02-00-00/lib/libLCContent.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/PandoraPFANew/v02-00-00/lib/libPandoraMonitoring.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/ilcutil/v01-02-01/lib/libstreamlog.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/MarlinUtil/v01-09/lib/libMarlinUtil.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/CED/v01-09-01/lib/libCED.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/PandoraPFANew/v02-00-00/lib/libPandoraSDK.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/PandoraPFANew/v02-00-00/lib/libLCContent.so
lib/libMarlinPandora.so.02.02.00: /cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/PandoraPFANew/v02-00-00/lib/libPandoraMonitoring.so
lib/libMarlinPandora.so.02.02.00: CMakeFiles/MarlinPandora.dir/build.make
lib/libMarlinPandora.so.02.02.00: CMakeFiles/MarlinPandora.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library lib/libMarlinPandora.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MarlinPandora.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library lib/libMarlinPandora.so.02.02.00 lib/libMarlinPandora.so.02.02 lib/libMarlinPandora.so

lib/libMarlinPandora.so.02.02: lib/libMarlinPandora.so.02.02.00

lib/libMarlinPandora.so: lib/libMarlinPandora.so.02.02.00

# Rule to build all files generated by this target.
CMakeFiles/MarlinPandora.dir/build: lib/libMarlinPandora.so
.PHONY : CMakeFiles/MarlinPandora.dir/build

CMakeFiles/MarlinPandora.dir/requires: CMakeFiles/MarlinPandora.dir/src/CaloHitCreator.cc.o.requires
CMakeFiles/MarlinPandora.dir/requires: CMakeFiles/MarlinPandora.dir/src/MCParticleCreator.cc.o.requires
CMakeFiles/MarlinPandora.dir/requires: CMakeFiles/MarlinPandora.dir/src/GeometryCreator.cc.o.requires
CMakeFiles/MarlinPandora.dir/requires: CMakeFiles/MarlinPandora.dir/src/PfoCreator.cc.o.requires
CMakeFiles/MarlinPandora.dir/requires: CMakeFiles/MarlinPandora.dir/src/ExternalClusteringAlgorithm.cc.o.requires
CMakeFiles/MarlinPandora.dir/requires: CMakeFiles/MarlinPandora.dir/src/EnergyCorrectionSC.cc.o.requires
CMakeFiles/MarlinPandora.dir/requires: CMakeFiles/MarlinPandora.dir/src/CellEnergyAlgorithm.cc.o.requires
CMakeFiles/MarlinPandora.dir/requires: CMakeFiles/MarlinPandora.dir/src/PandoraPFANewProcessor.cc.o.requires
CMakeFiles/MarlinPandora.dir/requires: CMakeFiles/MarlinPandora.dir/src/TrackCreator.cc.o.requires
.PHONY : CMakeFiles/MarlinPandora.dir/requires

CMakeFiles/MarlinPandora.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MarlinPandora.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MarlinPandora.dir/clean

CMakeFiles/MarlinPandora.dir/depend:
	cd /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/CMakeFiles/MarlinPandora.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MarlinPandora.dir/depend

