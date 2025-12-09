## This is heteroDaidd; weird emergency rescue 2025 Dec 09 (Tue)

current: target
-include target.mk
Ignore = target.mk

vim_session:
	bash -cl "vmt"

## -include makestuff/perl.def

######################################################################

hetero.pdf: hetero.tex

cdirs += LatexTemplates Disease_data Endemic_curves
cdirs += SIR_model_family SIR_simulations

$(cdirs):
	$(mkdir)

LatexTemplates/%: | LatexTemplates
	cd ../$| && $(MAKE) $*
	cp ../$|/$* $@
	git add -f $@

Disease_data/%: | Disease_data
	cd ../$| && $(MAKE) $*
	cp ../$|/$* $@
	git add -f $@

Endemic_curves/%: | Endemic_curves
	cd ../$| && $(MAKE) $*
	cp ../$|/$* $@
	git add -f $@

SIR_simulations/%: | SIR_simulations
	cd ../$| && $(MAKE) $*
	cp ../$|/$* $@
	git add -f $@

SIR_model_family/%: | SIR_model_family
	cd ../$| && $(MAKE) $*
	cp ../$|/$* $@
	git add -f $@

Disease_data/%: | Disease_data
	cd ../$| && $(MAKE) $*
	cp ../$|/$* $@
	git add -f $@

talkdir: dir=makestuff/newtalk
talkdir:
	$(linkdirname)

webpix:
	$(mkdir)
webpix/%:
	cp ../disease/$@ $@
	git add -f $@

my_images:
	$(mkdir)
my_images/%:
	cp ../disease/$@ $@
	git add -f $@

add: LatexTemplates/top.pdf LatexTemplates/bar.pdf
add: LatexTemplates/rights.png LatexTemplates/attrib.png LatexTemplates/noncom.png

######################################################################

### Makestuff

Sources += Makefile

Ignore += makestuff
msrepo = https://github.com/dushoff

## ln -s ../makestuff . ## Do this first if you want a linked makestuff
Makefile: makestuff/00.stamp
makestuff/%.stamp: | makestuff
	- $(RM) makestuff/*.stamp
	cd makestuff && $(MAKE) pull
	touch $@
makestuff:
	git clone --depth 1 $(msrepo)/makestuff

-include makestuff/os.mk

-include makestuff/texj.mk

-include makestuff/git.mk
-include makestuff/visual.mk

