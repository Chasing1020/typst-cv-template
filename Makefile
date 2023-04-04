PROJECT_ROOT := $(abspath .)
OUTPUT_NAME  := resume

# Build the resume PDF from the Typst template
build:
	typst --root=$(PROJECT_ROOT) resume.typ $(OUTPUT_NAME).pdf

# Watch for changes to the Typst template and rebuild the resume automatically
watch:
	typst --root=$(PROJECT_ROOT) --watch resume.typ $(OUTPUT_NAME).pdf

# Convert the resume PDF to a JPG image (ImageMagick should be installed)
image: build 
	convert -density 500 $(OUTPUT_NAME).pdf $(OUTPUT_NAME).jpg

# Clean up the generated files
clean:
	rm *.pdf *.jpg
