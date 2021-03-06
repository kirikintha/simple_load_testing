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

#------------------------------------------------------------------------------
# Commands
#------------------------------------------------------------------------------
simple-load-test:
	@sudo make-scripts/init.sh 100 10 1 simple-load-test

load-test:
	@sudo make-scripts/init.sh 1000 100 2 load-test

medium-load-test:
	@sudo make-scripts/init.sh 10000 250 4 medium-load-test

high-load-test:
	@sudo make-scripts/init.sh 10000 500 4 high-load-test

heavy-load-test:
	@sudo make-scripts/init.sh 20000 1000 6 heavy-load-test