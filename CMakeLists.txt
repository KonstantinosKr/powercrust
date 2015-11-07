cmake_minimum_required(VERSION 2.8)
 
PROJECT(CONSTRUCTION)
 
find_package(VTK REQUIRED)
include(${VTK_USE_FILE})

INCLUDE_DIRECTORIES( ${CONSTRUCTION_SOURCE_DIR} )


ADD_LIBRARY( powercrust ${CONSTRUCTION_SOURCE_DIR}/powercrust.cpp )

add_executable( construct construct.cpp )
target_link_libraries( construct ${VTK_LIBRARIES} powercrust )

