doc001		= 01-1371-pathlib.md
doc002		= 02-1038-typechecking.md
doc000		= $(doc002)
current_branch	= dev.20221206.doc.typechecking
url_prefix	= https://github.com/idorax/tmt-dev-sandbox/blob

all: foo

foo: ${doc000}
	expand $^ > $@ && imod $@ && cp $@ $^ && rm -f $@

pushfx: foo
	git commit -a --amend
	git push -f
	@echo "${url_prefix}/${current_branch}/doc/${doc000}"
px: pushfx
