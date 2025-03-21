# Makefile with git and Python cache cleaning utilities

# Define silence prefix
SILENT=@

.PHONY: clean info gitlog

# Remove all __pycache__ directories recursively
clean:
	${SILENT}find . -type d -name "__pycache__" -exec rm -rf {} +

# Show git status
info:
	${SILENT}git status

# Show formatted git log with custom format and colors
gitlog:
	${SILENT}git log --pretty=format:"%C(yellow)[%h]%C(green)[%cd]%C(blue)[%D]%C(red)[%an]%C(reset)[%s]" --date=short