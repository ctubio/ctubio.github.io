all: test

test: INSTALL
	@bashcov -- bats test/*.bats

install-yes: clean INSTALL
	@mkdir tmp
	@cd tmp && ../INSTALL --yes
	@grep "" tmp/*
	@make clean

install-no: clean INSTALL
	@mkdir tmp
	@cd tmp && ../INSTALL --no
	@make clean

clean:
	@rm -rf tmp

.PHONY: test
