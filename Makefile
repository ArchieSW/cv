.PHONY: examples

CC = xelatex
EXAMPLES_DIR = .
RESUME_DIR = ./resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

examples: $(foreach x, resume, $x.pdf)

resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.pdf
