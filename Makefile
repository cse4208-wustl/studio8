#               The name of the executable file you want to build
EXECUTABLE      = studio5

#               Source (.cpp) files you want to compile
#               (NOTE: Don't include header (.h) files, or any source (.cpp) files
#               that only contain template class method definitions.)
CMPL_SRCS       = studio5.cpp

#               Source files containing only template class method definitions
TMPL_SRCS       = Compose_T.cpp

#               Header (.h) files
HEADER_FILES    = Compose_T.h

#               Any special flags that should be set for compilation
SPECIAL_FLAGS   = -std=c++17 -DTEMPLATE_HEADERS_INCLUDE_SOURCE

#               Any additional libraries that need to be linked in
LIBS            =

#
#################### DO NOT CHANGE ANYTHING BELOW THIS LINE ###################

CXX             = g++
USER_SRCS       = $(CMPL_SRCS) $(TMPL_SRCS) $(HEADER_FILES)
CCC             = $(CXX)
OBJS            = $(CMPL_SRCS:.cc=.o)
DEFFLAGS        = -DUNIX
CXXFLAGS        = -Wall -W -g $(SPECIAL_FLAGS)
INCFLAGS        =
SUNFLAGS        =
CCFLAGS         = $(DEFFLAGS) $(INCFLAGS) $(SUNFLAGS) $(CXXFLAGS)

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJS)
	$(CXX) -o $(EXECUTABLE) $(CCFLAGS) $(OBJS) $(LIBS)

clean:
	-rm -f *.o core *.bak *~

realclean: clean
	-rm -f $(EXECUTABLE)

depend:
	-rm -f ccdep
	-rm -f eddep
	$(CXX) -xM $(CCFLAGS) $(CMPL_SRCS) > ccdep
	sed -n '1,/^# DO NOT DELETE THIS LINE/p' Makefile > eddep
	echo \#\#\# >> eddep
	cat ccdep >> eddep
	cp Makefile Makefile.bak
	mv eddep Makefile
	rm ccdep

.SUFFIXES: .cpp
.cpp.o:
	$(COMPILE.cc) $(CCFLAGS) $(OUTPUT_OPTION) $<
.cpp:
	$(LINK.cc) $(LDFLAGS) -o $@ $< $(LDLIBS)

main.o: $(USER_SRCS) Makefile

###
# OBJECT FILE DEPENDENCIES FOLLOW.
#
# DO NOT DELETE THIS LINE -- make depend uses it
###
