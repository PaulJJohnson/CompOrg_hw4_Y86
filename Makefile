####################################################
# Students' Makefile for the Architecture Lab
####################################################

# Default team name and version number
TEAM = $(USER)
# VERSION = 1

# Where are the different parts of the lab should be copied to when they
# are handed in.
HANDINDIR-PARTA = ./handin-parta
HANDINDIR-PARTB = ./handin-partb
HANDINDIR-PARTC = ./handin-partc

sim:
	(cd sim; make)

# Use this rule to hand in Part A ("make handin-parta")
handin-parta:
	mkdir $(HANDINDIR-PARTA)
#	cp sim/misc/sum.ys $(HANDINDIR-PARTA)/$(TEAM)-$(VERSION)-sum.ys
	cp sim/misc/sum.ys $(HANDINDIR-PARTA)/$(TEAM)-sum.ys
	cp sim/misc/rsum.ys $(HANDINDIR-PARTA)/$(TEAM)-rsum.ys
	cp sim/misc/copy.ys $(HANDINDIR-PARTA)/$(TEAM)-copy.ys

# Use this rule to handin Part B ("make handin-partb")
handin-partb:
	mkdir $(HANDINDIR-PARTB)
	cp sim/seq/seq-full.hcl $(HANDINDIR-PARTB)/$(TEAM)-seq-full.hcl

# Use this rule to handin Part C ("make handin-partc")
handin-partc:
	mkdir $(HANDINDIR-PARTC)
	cp sim/pipe/ncopy.ys $(HANDINDIR-PARTC)/$(TEAM)-ncopy.ys
	cp sim/pipe/pipe-full.hcl $(HANDINDIR-PARTC)/$(TEAM)-pipe-full.hcl

clean:
	rm -f *~ *.o



