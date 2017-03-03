#------------------------------------------------------------------------------
# http://www.cplusplus.com/forum/unices/12499/
SOURCE=main.cpp
MYPROGRAM=main
MYINCLUDES=

MYLIBRARIES=
CC=g++

#------------------------------------------------------------------------------



all: $(MYPROGRAM)



$(MYPROGRAM): $(SOURCE)

	$(CC) -I$(MYINCLUDES) $(SOURCE) -o$(MYPROGRAM) -l$(MYLIBRARIES)

clean:

	rm -f $(MYPROGRAM)
