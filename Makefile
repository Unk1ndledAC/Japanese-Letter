# Makefile for Japanese Letter LaTeX Templates
# 日本語書簡 LaTeX テンプレート用 Makefile

# Compiler settings
LATEX = lualatex
# LATEX = uplatex
DVIPDFM = dvipdfmx

# Main targets
.PHONY: all clean install view examples

all: examples

examples: \
	sample-letter-yoko.pdf \
	sample-letter-tate.pdf \
	sample-envelope-yoko.pdf \
	sample-envelope-tate.pdf

# PDF generation
%.pdf: %.tex
	$(LATEX) $<

# Compile with upLaTeX
%.dvi: %.tex
	$(LATEX) -uplatex $<

%.pdfu: %.tex
	$(LATEX) -uplatex $<
	$(DVIPDFM) $<

# View (Linux)
view:
	xdg-open sample-letter-yoko.pdf &

# View (macOS)
view-mac:
	open sample-letter-yoko.pdf

# View (Windows)
view-win:
	start sample-letter-yoko.pdf

# Clean build artifacts
clean:
	rm -f *.aux *.bbl *.blg *.dvi *.log *.out *.toc *.fdb_latexmk *.fls
	rm -f examples/*.aux examples/*.log
	rm -f *.pdf
	rm -rf auto/ out/

# Full clean (including PDFs)
distclean: clean
	rm -f examples/*.pdf

# Install templates to TEXMF
install:
	@echo "Installing templates to TEXMF directory..."
	@mkdir -p $(TEXMFHOME)/tex/latex/japanese-letter/
	@cp *.sty $(TEXMFHOME)/tex/latex/japanese-letter/
	@echo "Done. Run 'texhash' to update the filename database."

# Help
help:
	@echo "Japanese Letter LaTeX Templates - Makefile"
	@echo ""
	@echo "Targets:"
	@echo "  all          - Build all examples (default)"
	@echo "  examples     - Build all example PDFs"
	@echo "  sample-*.pdf - Build specific PDF"
	@echo "  view         - Open PDF viewer (Linux)"
	@echo "  view-mac     - Open PDF viewer (macOS)"
	@echo "  view-win     - Open PDF viewer (Windows)"
	@echo "  clean        - Remove build artifacts"
	@echo "  distclean    - Remove all generated files"
	@echo "  install      - Install to TEXMF directory"
	@echo "  help         - Show this help"
