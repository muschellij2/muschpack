all:
	Rscript -e "pkgdown::build_site()"

clean: 
	rm -r docs/