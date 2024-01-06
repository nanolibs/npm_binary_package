CC = gcc
CFLAGS = -Wall -Wextra -pedantic

HELLO_WORLD_SRC_DIR = hello_world
NPM_PACKAGE_DIR = npm_package
BIN_DIR = $(NPM_PACKAGE_DIR)/bin
PACKAGE_NAME = hello-world-app
VERSION = 1.0.0

all: build copy

build:
	$(CC) $(CFLAGS) -o $(HELLO_WORLD_SRC_DIR)/hello_world $(HELLO_WORLD_SRC_DIR)/hello_world.c

copy:
	cp $(HELLO_WORLD_SRC_DIR)/hello_world $(NPM_PACKAGE_DIR)/bin/

publish:
	cd $(NPM_PACKAGE_DIR) && npm version $(VERSION) && npm publish

verify:
	ls -l $(NPM_PACKAGE_DIR)/bin/

clean:
	rm -rf $(BIN_DIR)

.PHONY: all build copy publish verify clean
