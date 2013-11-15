#
#
#
CC = gcc
CFLAGS = -fstrength-reduce -fpcc-struct-return -O
AR = ar
ARFLAGS = cr
RANLIB = ar -s
DEFINES = -DNEED_STRERROR -DBITMAPDIR=\"\" -DNFSS -DEPSF
INCLUDES = -I..


vpath %.h .;..

OBJS = genbitmaps.o genbox.o genepic.o genibmgl.o genlatex.o genmf.o genpic.o \
	genpictex.o genps.o genpstex.o gentextyl.o gentk.o gentpic.o \
        psencode.o readgif.o readpcx.o readpics.o readxbm.o setfigfont.o \
        texfonts.o
#
#
#
#
all: transfig.a

transfig.a: $(OBJS)
	$(AR) $(ARFLAGS) $@ $(OBJS)
	$(RANLIB) $@


clean:
	-del *.o
	-del *.a

genbitmaps.o: genbitmaps.c ../fig2dev.h ../object.h texfonts.h
genbox.o: genbox.c ../fig2dev.h ../object.h
genepic.o: genepic.c ../fig2dev.h ../object.h texfonts.h ../pi.h
genibmgl.o: genibmgl.c ../fig2dev.h ../object.h ../pi.h
genlatex.o: genlatex.c ../fig2dev.h ../object.h texfonts.h ../pi.h
genmf.o: genmf.c ../fig2dev.h ../object.h
genpic.o: genpic.c ../fig2dev.h ../object.h picfonts.h picpsfonts.h
genpictex.o: genpictex.c ../pi.h ../fig2dev.h ../object.h texfonts.h
genps.o: genps.c ../pi.h ../fig2dev.h ../object.h psfonts.h \
 ../../patchlevel.h genps.h
genpstex.o: genpstex.c ../fig2dev.h ../object.h texfonts.h
gentextyl.o: gentextyl.c ../pi.h ../fig2dev.h ../object.h texfonts.h
gentk.o: gentk.c ../fig2dev.h ../object.h
gentpic.o: gentpic.c ../fig2dev.h ../object.h tpicfonts.h
psencode.o: psencode.c ../fig2dev.h
readgif.o: readgif.c ../fig2dev.h ../object.h
readpcx.o: readpcx.c ../fig2dev.h ../object.h pcx.h
readpics.o: readpics.c ../fig2dev.h
readxbm.o: readxbm.c ../fig2dev.h ../object.h
setfigfont.o: setfigfont.c
texfonts.o: texfonts.c



%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) $(DEFINES) -c -o $@ $<
