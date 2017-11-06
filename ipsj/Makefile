# Title: Makefile
# Date:  2016/02/12
# Name:  Takuro

# Target name
TARGET = paper
# BIB file
REF = ref.bib
# REFDIR = ../

# platex
PLATEX = platex
# dvipdfmx
#DVIPDFMX = dvipdfmx
DVIPDFMX = dvipdfmx.exe
# pbibtex
PBIBTEX = pbibtex

OBJS := $(TARGET).aux $(TARGET).log $(TARGET).dvi 
BIBOBJS := $(TARGET).bbl $(TARGET).blg

#
# Target
#
all: tex bib 

tex: $(OBJS)

bib: $(BIBOBJS)

$(OBJS): $(TARGET).tex 
	PLATEX $(TARGET).tex
	DVIPDFMX $(TARGET).dvi

$(BIBOBJS): $(REF)
	PLATEX $(TARGET).tex
	PBIBTEX $(TARGET)
	PLATEX $(TARGET).tex
	PLATEX $(TARGET).tex
	DVIPDFMX $(TARGET).dvi

.PHONY: diff
diff:
	./latexdiff_to_pdf.bash

.PHONY: clean
clean:
	rm -f $(OBJS) $(BIBOBJS)
.PHONY: realclean
realclean:
	rm -f $(OBJS) $(BIBOBJS) $(TARGET).pdf

