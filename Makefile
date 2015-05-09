all: test

test: INSTALL
#	@bashcov -- bats test/*.bats
	@kcov --coveralls-id=$TRAVIS_JOB_ID coverage bats test
install-yes: clean INSTALL
	@mkdir tmp
	@cd tmp && ../INSTALL --yes
	@grep "" tmp/*
	@make clean --no-print-directory

install-no: clean INSTALL
	@mkdir tmp
	@cd tmp && ../INSTALL --no
	@make clean --no-print-directory

clean:
	@rm -rf tmp

.PHONY: test
