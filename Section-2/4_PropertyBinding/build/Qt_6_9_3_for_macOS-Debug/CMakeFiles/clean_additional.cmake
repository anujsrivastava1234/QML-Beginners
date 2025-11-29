# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appPropertyBinding_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appPropertyBinding_autogen.dir/ParseCache.txt"
  "appPropertyBinding_autogen"
  )
endif()
