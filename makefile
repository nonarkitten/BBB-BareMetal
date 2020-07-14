# format all C code
.PHONY: astyle
astyle:
	find . -name '*.c' | xargs astyle --style=kr --pad-oper --pad-comma --pad-header
