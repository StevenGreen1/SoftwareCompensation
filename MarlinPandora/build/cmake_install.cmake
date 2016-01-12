# Install script for directory: /usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "0")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/./include" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\~$" EXCLUDE REGEX "/[^/]*\\#[^/]*$" EXCLUDE REGEX "/\\.\\#[^/]*$" EXCLUDE REGEX "/[^/]*CVS$" EXCLUDE REGEX "/[^/]*\\.svn$" EXCLUDE)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libMarlinPandora.so.02.02.00"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libMarlinPandora.so.02.02"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libMarlinPandora.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/Marlin/v01-06/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/lcio/v02-06/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/gear/v01-04-02/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/CLHEP/2.1.4.1/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/ilcutil/v01-02-01/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/MarlinUtil/v01-09/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/CED/v01-09-01/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/PandoraPFANew/v02-00-00/lib")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES
    "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/lib/libMarlinPandora.so.02.02.00"
    "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/lib/libMarlinPandora.so.02.02"
    "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/lib/libMarlinPandora.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libMarlinPandora.so.02.02.00"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libMarlinPandora.so.02.02"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libMarlinPandora.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/Marlin/v01-06/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/lcio/v02-06/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/gear/v01-04-02/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/CLHEP/2.1.4.1/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/ilcutil/v01-02-01/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/MarlinUtil/v01-09/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/CED/v01-09-01/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/PandoraPFANew/v02-00-00/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
           NEW_RPATH "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/Marlin/v01-06/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/lcio/v02-06/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/gear/v01-04-02/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/CLHEP/2.1.4.1/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/ilcutil/v01-02-01/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/MarlinUtil/v01-09/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/CED/v01-09-01/lib:/cvmfs/ilc.desy.de/sw/x86_64_gcc44_sl6/v01-17-07/PandoraPFANew/v02-00-00/lib")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/./include" REGEX "/[^/]*\\~$" EXCLUDE REGEX "/[^/]*\\#[^/]*$" EXCLUDE REGEX "/\\.\\#[^/]*$" EXCLUDE REGEX "/[^/]*CVS$" EXCLUDE REGEX "/[^/]*\\.svn$" EXCLUDE)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/usera/sg568/ilcsoft_v01_17_07/DESYCollaboration/MarlinPandora/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
