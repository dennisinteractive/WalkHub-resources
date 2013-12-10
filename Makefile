prodc = java -jar closure-compiler.jar
debugc = cat

jquery = jquery.js noconflict.js jquery.cookie.js
urijs = URI.js
modernizr = modernizr.mq.js
joyride = jquery.joyride.js
app = walkthrough.js

allfiles = $(jquery) $(modernizr) $(joyride) $(urijs) $(app)

all:
	$(prodc) $(allfiles) > compiled.js

debug:
	$(debugc) $(allfiles) > compiled.js

clean:
	rm compiled*.js
