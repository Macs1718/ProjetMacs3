CXX = g++ -std=c++11
CXXFLAGS = -O3 -pedantic -Wall -march=native
#CXXFLAGS = -g -D_GLIBCXX_DEBUG
CXXFLAGS_OMP = $(CXXFLAGS) -fopenmp -Ilodepng
LIBS = -lpthread -lm
LIBS_OMP = -lm

all: Mandelbrot.exe 

Mandelbrot.exe:	Mandelbrot.cpp lodepng/lodepng.cpp
	$(CXX) $(CXXFLAGS_OMP) -o $@ $^ $(LIBS_OMP)

clean:
	@rm -fr *.exe *~ *.o *.png
