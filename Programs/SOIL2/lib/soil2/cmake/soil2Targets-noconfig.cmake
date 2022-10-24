#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "soil2::soil2" for configuration ""
set_property(TARGET soil2::soil2 APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(soil2::soil2 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C;CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libsoil2.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS soil2::soil2 )
list(APPEND _IMPORT_CHECK_FILES_FOR_soil2::soil2 "${_IMPORT_PREFIX}/lib/libsoil2.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
