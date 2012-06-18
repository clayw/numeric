JS_COMPILER = ./node_modules/uglify-js/bin/uglifyjs

all: numeric.min.js package.json

numeric.js: \
	src/numeric.js \
	src/seedrandom.js \
	src/quadprog.js \
	src/svd.js \
	Makefile

%.min.js: %.js
	@rm -f $@
	$(JS_COMPILER) < $< > $@

%.js:
	@rm -f $@
	cat $(filter %.js,$^) >> $@
	@chmod a-w $@

package.json: numeric.js src/package.js
	@rm -f $@
	node src/package.js > $@
	@chmod a-w $@

clean:
	rm -f numeric.js
