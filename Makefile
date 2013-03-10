# Temporary Makefile because I don't feel like plagerizing a Cakefile right
# now.
SRC=spiffy.js
OUT=spiffy.min.js

all: $(OUT)

%.min.js: %.js
	uglifyjs $^ --comments -m -p -d jQuery -o $@

%.coffee: %.js
	coffee -b $<
