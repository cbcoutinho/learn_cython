
P  = python
FC = gfortran
FLAGS = -O3 -fPIC -Wall

all:
	$(MAKE) test

test: build
	python test.py
	# $(MAKE) clean

build: setup.py pygfunc.o gfunc.o
	$(P) $< build_ext --inplace

gfunc.o: gfunc.f90
	$(FC) -c $< -o $@ $(FLAGS)

pygfunc.o: pygfunc.f90 gfunc.o
	$(FC) -c $< -o $@ $(FLAGS)

clean:
	rm -rf *.o build *.mod *.so *.c
