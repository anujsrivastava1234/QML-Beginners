# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appQtGlobalObject_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appQtGlobalObject_autogen.dir/ParseCache.txt"
  "appQtGlobalObject_autogen"
  )
endif()
