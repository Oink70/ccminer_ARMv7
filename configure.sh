# To change the cuda arch, edit Makefile.am and run ./build.sh

extracflags="-D_REENTRANT -falign-functions=16 -falign-jumps=16 -falign-labels=16 -fomit-frame-pointer -fpic -pthread -flto -L/usr/local/lib64 -fuse-ld=lld -fno-gcse -fvariable-expansion-in-unroller"


./configure CXXFLAGS=" -fopenmp -ffast-math -Ofast -funroll-loops -finline-functions $extracflags -march=armv8-a+nocrypto -mtune=native " CFLAGS="-fopenmp -ffast-math -march=armv8-a+nocrypto -mtune=native   -Ofast $extracflags "  CXX=clang++ CPP=clang-cpp CC=clang LDFLAGS="-v -flto -fopenmp  " --enable-openmp

#clang: warning: optimization flag '-fuse-linker-plugin' is not supported [-Wignored-optimization-argument]
#clang: warning: optimization flag '-fno-gcse' is not supported [-Wignored-optimization-argument]
#clang: warning: optimization flag '-falign-jumps=16' is not supported [-Wignored-optimization-argument]
#clang: warning: optimization flag '-falign-labels=16' is not supported [-Wignored-optimization-argument]

