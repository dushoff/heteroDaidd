
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

talkdir:
	$(mkdir)
	cp -r makestuff/newtalk/*.* $@
	git add $@

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


