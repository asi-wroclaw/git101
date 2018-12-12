root = $(PWD)

slides:
	pandoc -f markdown slides.md -t revealjs --css=custom.css -o index.html \
		-V mouseWheel=true \
		-V history=true \
		-V controls=false \
		-V slideNumber="'c/t'" \
		--standalone
	ruby fix_images.rb

.ONESHELL:
release: slides.md slides
	mkdir -p /tmp/presentation/reveal.js
	cp -rf index.html /tmp/presentation/
	-cp -rf images /tmp/presentation/
	cp -rf ../reveal.js/css \
		../reveal.js/js \
		../reveal.js/lib \
		../reveal.js/plugin /tmp/presentation/reveal.js/
	cd /tmp/presentation
	zip -r9 $(HOME)/presentation.zip *
	rm -rf /tmp/presentation/
	cd $(root)
