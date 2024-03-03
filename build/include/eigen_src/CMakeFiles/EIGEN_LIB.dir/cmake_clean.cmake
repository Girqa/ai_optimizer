file(REMOVE_RECURSE
  "libEIGEN_LIB.a"
  "libEIGEN_LIB.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/EIGEN_LIB.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
