all:

lint:
	shellcheck $$(git ls-files *.sh)
	echo DONE
