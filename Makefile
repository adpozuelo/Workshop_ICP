all :
	gcc -o pi_serial_c.exe pi_serial.c
	gfortran -o pi_serial_f.exe pi_serial.f90
	gcc -fopenmp -o pi_openmp_c_a.exe pi_openmp_a.c
	gcc -fopenmp -o pi_openmp_c_b.exe pi_openmp_b.c
	gcc -fopenmp -o pi_openmp_c_c.exe pi_openmp_c.c
	gfortran -Ofast -o pi_serial_f.exe pi_serial.f90
	nvfortran -o pi_cuda_a.exe pi_cuda_mod_a.cuf pi_cuda_main_a.cuf
	nvfortran -cudalib=curand -o pi_cuda_b.exe pi_cuda_mod_b.cuf pi_cuda_main_b.cuf
	nvfortran -cudalib=curand -o pi_cuda_c.exe pi_cuda_mod_c.cuf pi_cuda_main_c.cuf

clean:
	rm -f *.exe
	rm -f *.pyc
	rm -f *.o
	rm -f *.mod
