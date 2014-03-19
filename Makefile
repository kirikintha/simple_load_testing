#------------------------------------------------------------------------------
# Makefile: runs maintenance and various utility scripts for your project.
# Check out make help for more information.
# include platform make defs - so we can override them
#------------------------------------------------------------------------------

SHELL := /bin/bash

#------------------------------------------------------------------------------
# Help
#------------------------------------------------------------------------------
help:
	@bash make-scripts/help.sh