HERE = $(PWD)
LIBS = $(PWD)/macro/libs2
EXES = $(PWD)/EXE
CC = g++
TARGET = main

$(TARGET): libA.a libA.a
	$(CC) -o $@ $^

libA.a: $(EXES)/*.o
	ar -r $@ $^

libB.a: $(EXES)/*.o
	ar -r $@ $^

$(EXES)/%.o: %.cpp $(LIBS)/*.h
	$(CC) -I$(LIBS) -c $< -o $@


p:
	@echo "$(HERE)"

clean:
	rm -f $(EXES)/*.o $(TARGET) *.a main