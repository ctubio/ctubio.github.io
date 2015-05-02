all: test

test: INSTALL
	@bats test/*.bats

coverage: INSTALL
	@bashcov make test

yes: clean INSTALL
	@mkdir tmp
	@cd tmp && ../INSTALL -y
	@grep "" tmp/*
	@make clean

no: clean INSTALL
	@mkdir tmp
	@cd tmp && ../INSTALL -n
	@make clean

clean:
	@rm -rf tmp

.PHONY: test
