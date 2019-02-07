all:
	pandoc [0-9]*.md -o xml-cheatsheet.pdf --listings --template="template.tex" variables.yaml

clean:
	rm -f xml-cheatsheet.pdf

rebuild: clean all
