SRC_DIR = src
OUT_DIR = out

MAIN_SCRIPT = main.lua
LUA = lua

all: help

help:
	@echo ""
	@echo "This is a Lua skeleton project makefile. Possible rules:"
	@echo "\tall - prints this help."
	@echo "\trun - executes main lua script if it's not a library project."
	@echo "\ttest - runs tests."
	@echo ""

run:
	$(LUA) $(SRC_DIR)/$(MAIN_SCRIPT)

test:

.PHONY: all run test
