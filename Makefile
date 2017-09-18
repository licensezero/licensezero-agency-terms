all: agency.docx agency.pdf

%.pdf: %.docx
	unoconv $<

agency.docx: agency.cform blanks.json
	commonform render --format docx --title "Agency Terms" --blanks blanks.json < $< > $@
