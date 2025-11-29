# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appBasicQMLSyntax_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appBasicQMLSyntax_autogen.dir/ParseCache.txt"
  "appBasicQMLSyntax_autogen"
  )
endif()
