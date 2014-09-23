BUILD_DIR ?= build
BUILD_TYPE ?= Debug
BUILD_TESTS ?= OFF
CMAKE_DIR = $(CURDIR)

PROJECT_NAME = main
OUTPUT_EXEC = $(PROJECT_NAME)


all:
	@echo "Usage:"
	@echo "\tmake release"
	@echo "\tmake debug"
	@echo "\tmake test"
	@echo "\tmake test-memleaks"
	@echo "\tmake docs"
.PHONY: all


build:
	mkdir -p $(BUILD_DIR) ; cd $(BUILD_DIR) ; \
		cmake \
		-D CMAKE_BUILD_TYPE=$(BUILD_TYPE) \
		-D PROJECT_NAME=$(PROJECT_NAME) \
		-D SKELETON_ENABLE_TESTS=$(BUILD_TESTS) \
		$(CMAKE_DIR) ; make
.PHONY: build


release:
	BUILD_TYPE=Release BUILD_DIR=build/release $(MAKE) build
.PHONY: release


debug:
	BUILD_TYPE=Debug BUILD_DIR=build/debug CXX=clang++ $(MAKE) build
.PHONY: debug


# Tests are build in the same directory so that we would not have to recompile
# everything jus to run the tests.
test:
	BUILD_TYPE=Release BUILD_DIR=build/release BUILD_TESTS=ON \
		$(MAKE) build
	cd $(BUILD_DIR)/release ; make run-tests
.PHONY: test


test-memleaks:
	BUILD_TYPE=Release BUILD_DIR=build/release BUILD_TESTS=ON \
		$(MAKE) build
	cd $(BUILD_DIR)/release ; make run-memleak-tests
.PHONY: test-memleaks


test-memleaks-debug:
	BUILD_TYPE=Debug BUILD_DIR=build/debug BUILD_TESTS=ON \
		$(MAKE) debug
	cd $(BUILD_DIR)/debug ; make run-memleak-tests
.PHONY: test-memleaks-debug


clean:
	rm -rf build
.PHONY: clean


run-release:
	./$(BUILD_DIR)/release/$(OUTPUT_EXEC)
.PHONY: run-release


run-debug:
	./$(BUILD_DIR)/debug/$(OUTPUT_EXEC)
.PHONY: run-debug


docs:
	mkdir -p $(BUILD_DIR)
	doxygen Doxyfile
.PHONY: docs
