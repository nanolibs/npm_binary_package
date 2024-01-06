CC = gcc
CFLAGS = -Wall -Wextra -pedantic

HELLO_WORLD_SRC_DIR = hello_world
NPM_PACKAGE_DIR = npm_package
BIN_DIR = $(NPM_PACKAGE_DIR)/bin
PACKAGE_NAME = hello-world-app
VERSION = 1.0.0

all: build

build:
	$(CC) $(CFLAGS) -o $(BIN_DIR)/hello_world $(HELLO_WORLD_SRC_DIR)/hello_world.c

publish:
	cd $(NPM_PACKAGE_DIR) && npm version $(VERSION) && npm publish

clean:
	rm -rf $(BIN_DIR)

.PHONY: all build publish clean
