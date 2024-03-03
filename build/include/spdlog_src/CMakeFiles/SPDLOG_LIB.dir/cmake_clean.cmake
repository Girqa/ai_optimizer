file(REMOVE_RECURSE
  "libSPDLOG_LIB.a"
  "libSPDLOG_LIB.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/SPDLOG_LIB.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
