MAKE = make
HERE = $(PWD)
M1 = $(HERE)
M2 = /home/arpit/Desktop/CS_241/problem7
M3 = /home/arpit/Desktop/CS_241/problem9

#to execute makefile from another makefile
#make -C(path of directory where makefile is present you want to execute) -f (name of makefile) 
#same command for delete also 


all:
	@$(MAKE) -C$(M2) -f Makefile
	@$(MAKE) -C$(M3) -f Makefile

.PHONY: del

del:
	@$(MAKE) -C$(M2) -f Makefile clean
	@$(MAKE) -C$(M3) -f Makefile clean