#
#
#
CC = gcc
CFLAGS = -fstrength-reduce -fpcc-struct-return -O
DEFINES = -DNEED_STRERROR -DHAVE_NO_STRNCASECMP -DHAVE_NO_STRCASECMP
INCLUDES = -I..


vpath %.h .;..

#
#
#
OBJS = arrow.o bound.o free.o getopt.o iso2tex.o latex_line.o psfonts.o \
     read.o read1_3.o strstr.o trans_spline.o fig2dev.o

#
#
#
all: fig2dev.exe


fig2dev.exe: $(OBJS)
	$(CC) -o $@ $(OBJS) -Ldev -ltransfig -lm -lemx -lsocket


clean:
	-del *.o
	-del *.exe


#
#
#
arrow.o: arrow.c alloc.h fig2dev.h object.h
bound.o: bound.c pi.h fig2dev.h object.h
free.o: free.c fig2dev.h object.h
getopt.o: getopt.c
iso2tex.o: iso2tex.c
latex_line.o: latex_line.c
psfonts.o: psfonts.c fig2dev.h object.h
read.o: read.c alloc.h fig2dev.h object.h trans_spline.h \
 ../patchlevel.h
read1_3.o: read1_3.c alloc.h fig2dev.h object.h
strstr.o: strstr.c
trans_spline.o: trans_spline.c fig2dev.h object.h trans_spline.h
fig2dev.o: fig2dev.c patchlevel.h fig2dev.h object.h drivers.h




%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) $(DEFINES) -c -o $@ $<
