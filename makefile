FILES = .paper.md \
		metadata.yaml

OUTPUT = build

FLAGS = -F pandoc-crossref \
		--bibliography=bibliography.bib \
		--csl=bibliography.csl \
		--pdf-engine=xelatex \
		-s \
		-f markdown+yaml_metadata_block \
		--toc 

FLAGS_PDF = --template=eisvogel.tex

all: pdf

pdf:
	cat paper.md > .paper.md; pandoc -o $(OUTPUT)/paper.pdf $(FLAGS) $(FLAGS_PDF) $(FILES)

clean:
	rm build/*

