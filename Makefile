ALL_LANGS := en pt
COMMON_FILES := nth_root_proof.tex mainstyle.sty Makefile nth_root.py \
                newton_raphson_tikz.tex

define pdflatex_compile
	$(1:%=PDFLANG=%) pdflatex \
	  -jobname=$(1:%=nth_root_proof_%) \
	  -output-directory=build \
	  -shell-escape nth_root_proof.tex
endef

define add_pdf_target
$(1:%=nth_root_proof_%.pdf): $(COMMON_FILES) $(wildcard $(1)/*.tex)
	@mkdir -p build
	$$(call pdflatex_compile, $(1))
	$$(call pdflatex_compile, $(1))
	mv build/$$@ .
endef

all: $(ALL_LANGS)

$(ALL_LANGS): %: nth_root_proof_%.pdf

$(foreach lang, $(ALL_LANGS), $(eval $(call add_pdf_target, $(lang))))

clean: mostlyclean
	rm -f $(ALL_LANGS:%=nth_root_proof_%.pdf)

mostlyclean:
	rm -rf build

.PHONY: all $(ALL_LANGS) clean mostlyclean
