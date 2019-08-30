FILES = .paper.md \
		metadata.yaml

OUTPUT = build

FLAGS = -F pandoc-crossref \
		--bibliography=bibliography.bib \
		--csl=bibliography.csl \
		--pdf-engine=xelatex \
		-s \
		-f markdown+yaml_metadata_block \
		--include-after-body=texts/appendix.tex \
		--toc 

FLAGS_PDF = --template=eisvogel.tex

all: pdf

pdf:
	cat texts/*.md  > .paper.md; pandoc -o $(OUTPUT)/paper.pdf $(FLAGS) $(FLAGS_PDF) $(FILES)

clean:
	rm build/*

