PREFIX=/media/jeksterslab/scripts/r
PKG=$(PREFIX)/jeksterslabR

.PHONY: all clean rm

all : rm
	cp $(PKG)/inst/extdata/imports $(PKG)/NAMESPACE
	Rscript -e 'jeksterslabRpkg::pkg_build("$(PKG)", git = TRUE, github = TRUE, commit_msg = "Automated build")'

clean : rm
	-git add --all
	-git commit -m "[skip ci] Automated clean."
	-git push

rm :
	-Rscript -e 'jeksterslabRpkg::pkg_clean("$(PKG)")'
