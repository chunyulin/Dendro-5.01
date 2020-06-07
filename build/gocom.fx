rm -rf CMake*

~/local/cmake/bin/cmake  ../   \
          -DCMAKE_C_COMPILER=fccpx   -DCMAKE_CXX_COMPILER=FCCpx   -DCMAKE_Fortran_COMPILER=frtpx \
          -DMPI_C_COMPILER=mpifccpx  -DMPI_CXX_COMPILER=mpiFCCpx  -DMPI_Fortran_COMPILER=mpifrtpx \
          -DMPI_fjstring_internal_LIBRARY=${TCS}/lib64/libfjstring_internal.so \
          -DDENDRO_VTK_ZLIB_COMPRES=ON -DNUM_NPES_THRESHOLD=2   \
          -DENABLE_DENDRO_PROFILE_COUNTERS=ON -DALLTOALL_SPARSE=ON -DRUN_WEAK_SCALING=ON \
          -DNLSM_NONLINEAR=ON -DNLSM_COMPARE_WITH_ANALYTICAL_SOL=ON \
          -DUSE_64BIT_INDICES=ON              -DRK_SOLVER_OVERLAP_COMM_AND_COMP=ON  \
          -DCMAKE_CXX_FLAGS="-O2 -DNLSM_PROFILE_HUMAN_READABLE -U__SIZEOF_INT128__" \
          -DWITH_BLAS_LAPACK=ON \
          -DLAPACK_LIBRARIES="-SSL2" -DBLAS_LIBRARIES="-SSL2"


#          -DCMAKE_CXX_FLAGS="-I${TCS}/include/lapack -O1 -DNLSM_PROFILE_HUMAN_READABLE  -U__SIZEOF_INT128__ -ULAPACK_E" \
#         -DLAPACK_LIBRARIES="-L${TCS}/lib64 -lfjlapack -lfj90f -lfj90i -lfjsrcinfo" \
#          -DBLAS_LIBRARIES="-lfj90f"


