CC=g++
CFLAGS=-c -Wall
DEPS=function.h
COM_COLOR=\033[31;1;4m	#color code in ANSI
#####
#color coding in ANSI is of the form \033[XXXm
#here XXX is a series of semicolon separated parameters
#e.g. to make text red ,bold,underline we use \033[31;1;4m
########
BG_COLOR=\033[31;42;4m
OBJ_COLOR=\033[0;36m
COM_STRING="[OK]"		#defining a string

#to print variables or macros 
#you can use all also in place of print
#@echo is used to suppress the eho statement 
#i.e. if @ is not used we get 
#	$CC is [g++]
#	echo CC=g++
#	CC=g++
#if @ is used we get 
#	$CC is [g++]
#	CC=g++
##########
#to print in different colors simply use MACROS inside ""
#if we use print just like this compilation does not occur onpy print occurs
#but using @echo using other command does our job
# print:
# 	@echo CC=$(CC)
# 	@echo "$(COM_COLOR)$(COM_STRING)$(OBJ_COLOR)$(COM_STRING)"

# result: main.o function_1.o function_2.o
# 	$(CC) $^ -o $@
result: *.cpp
	@echo "\033[34;1;4m$(CC)"
	@echo "$(COM_COLOR)$(COM_STRING)$(OBJ_COLOR)$(COM_STRING)\033[0m"
	$(CC) $^ -o $@

# %.o: %.cpp
# 	$(CC) $(CFLAGS) $^


#if i comment above command and give *.cpp as dependency on above command it does not create .0 file sanluy executables 
#.o files are created only by using gcc -c

# function_%.o: function_%.cpp
# 	$(CC) $(CFLAGS) $^

# function_2.o: function_2.cpp
# 	$(CC) $(CFLAGS) $^

#to print MACROS at he begining of running of program 
#$(info $$CC is [${CC}])

clean:
	rm -rf *o result
