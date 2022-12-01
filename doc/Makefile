all: foo01 

foo01: 01-1371-pathlib.md
	expand $^ > $@ && imod $@ && cp $@ $^ && rm -f $@

pushfx: foo01
	git commit -a --amend
	git push -f
	@echo "https://github.com/idorax/tmt-dev-sandbox/blob/dev.20221201.1371/doc/01-1371-pathlib.md"
px: pushfx
