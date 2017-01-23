
PY = python
FC = gfortran
FLAGS = -O3 -fPIC -Wall

all:
	$(MAKE) test

test: build test.py
	python test.py
	./main

build: setup.py pygfunc.o gfunc.o main.f90
	$(PY) $< build_ext --inplace
	$(FC) gfunc.o main.f90 -o main

gfunc.o: gfunc.f90
	$(FC) -c $< -o $@ $(FLAGS)

pygfunc.o: pygfunc.f90 gfunc.o
	$(FC) -c $< -o $@ $(FLAGS)

.PHONY: clean

clean:
	rm -rf *.o build *.mod *.so *.c main
