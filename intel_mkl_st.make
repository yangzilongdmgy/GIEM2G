FC=mpif90
F77=mpif77
FC_Link=mpif90
AR=xiar

#FOPTS= -g  -mcmodel=large   -openmp  -i4   -O3 -traceback    -xHost -prec-div -inline speed -ipo=15 
FOPTS= -g -mcmodel=large   -openmp  -i4   -O0


LIB_FFTW=  -L$(HOME)/Soft/lib2/lib -lfftw3_omp -lfftw3_mpi  -lfftw3    
LIB_ZFGMRES=-L./ZFGMRES -lzfgmres
LIB_BLAS= -Wl,--start-group ${MKLROOT}/lib/intel64/libmkl_intel_lp64.a ${MKLROOT}/lib/intel64/libmkl_core.a ${MKLROOT}/lib/intel64/libmkl_sequential.a -Wl,--end-group -lpthread -lm
LIB_ADD= 
INCLUDE= $(HOME)/Soft/lib/include

