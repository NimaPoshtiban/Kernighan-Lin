DOXY_EXEC_PATH = C:/Users/Nima/Documents/KL/build/Desktop_Qt_6_10_1_llvm_mingw_64_bit-Debug
DOXYFILE = C:/Users/Nima/Documents/KL/build/Desktop_Qt_6_10_1_llvm_mingw_64_bit-Debug/Doxyfile
DOXYDOCS_PM = C:/Users/Nima/Documents/KL/docs/perlmod/DoxyDocs.pm
DOXYSTRUCTURE_PM = C:/Users/Nima/Documents/KL/docs/perlmod/DoxyStructure.pm
DOXYRULES = C:/Users/Nima/Documents/KL/docs/perlmod/doxyrules.make
DOXYLATEX_PL = C:/Users/Nima/Documents/KL/docs/perlmod/doxylatex.pl
DOXYLATEXSTRUCTURE_PL = C:/Users/Nima/Documents/KL/docs/perlmod/doxylatex-structure.pl
DOXYSTRUCTURE_TEX = C:/Users/Nima/Documents/KL/docs/perlmod/doxystructure.tex
DOXYDOCS_TEX = C:/Users/Nima/Documents/KL/docs/perlmod/doxydocs.tex
DOXYFORMAT_TEX = C:/Users/Nima/Documents/KL/docs/perlmod/doxyformat.tex
DOXYLATEX_TEX = C:/Users/Nima/Documents/KL/docs/perlmod/doxylatex.tex
DOXYLATEX_DVI = C:/Users/Nima/Documents/KL/docs/perlmod/doxylatex.dvi
DOXYLATEX_PDF = C:/Users/Nima/Documents/KL/docs/perlmod/doxylatex.pdf

.PHONY: clean-perlmod
clean-perlmod::
	rm -f $(DOXYSTRUCTURE_PM) \
	$(DOXYDOCS_PM) \
	$(DOXYLATEX_PL) \
	$(DOXYLATEXSTRUCTURE_PL) \
	$(DOXYDOCS_TEX) \
	$(DOXYSTRUCTURE_TEX) \
	$(DOXYFORMAT_TEX) \
	$(DOXYLATEX_TEX) \
	$(DOXYLATEX_PDF) \
	$(DOXYLATEX_DVI) \
	$(addprefix $(DOXYLATEX_TEX:tex=),out aux log)

$(DOXYRULES) \
$(DOXYMAKEFILE) \
$(DOXYSTRUCTURE_PM) \
$(DOXYDOCS_PM) \
$(DOXYLATEX_PL) \
$(DOXYLATEXSTRUCTURE_PL) \
$(DOXYFORMAT_TEX) \
$(DOXYLATEX_TEX): \
	$(DOXYFILE)
	cd $(DOXY_EXEC_PATH) ; doxygen "$<"

$(DOXYDOCS_TEX): \
$(DOXYLATEX_PL) \
$(DOXYDOCS_PM)
	perl -I"$(<D)" "$<" >"$@"

$(DOXYSTRUCTURE_TEX): \
$(DOXYLATEXSTRUCTURE_PL) \
$(DOXYSTRUCTURE_PM)
	perl -I"$(<D)" "$<" >"$@"

$(DOXYLATEX_PDF) \
$(DOXYLATEX_DVI): \
$(DOXYLATEX_TEX) \
$(DOXYFORMAT_TEX) \
$(DOXYSTRUCTURE_TEX) \
$(DOXYDOCS_TEX)

$(DOXYLATEX_PDF): \
$(DOXYLATEX_TEX)
	pdflatex -interaction=nonstopmode "$<"

$(DOXYLATEX_DVI): \
$(DOXYLATEX_TEX)
	latex -interaction=nonstopmode "$<"
