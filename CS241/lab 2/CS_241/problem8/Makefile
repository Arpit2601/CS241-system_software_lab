shapes: cube.o rectangle.o cylinder.o circle.o sphere.o
	g++  cube.o rectangle.o cylinder.o circle.o sphere.o -o output

cube.o: cube.cpp
	g++ -c cube.cpp

rectangle.o: rectangle.cpp
	g++ -c rectangle.cpp

cylinder.o: cylinder.cpp
	g++ -c cylinder.cpp

circle.o: circle.cpp
	g++ -c circle.cpp

sphere.o: sphere.cpp
	g++ -c sphere.o

clean:
	rm *o shapes

