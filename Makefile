.PHONY: examples

CC = xelatex
EXAMPLES_DIR = .
RESUME_DIR = ./resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

examples: $(foreach x, cv, $x.pdf)

cv.pdf: $(EXAMPLES_DIR)/cv.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
