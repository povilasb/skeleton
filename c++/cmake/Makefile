BUILD_DIR = build
BUILD_TYPE ?= Debug
CMAKE_DIR = $(CURDIR)


all: cmake
.PHONY: all


cmake: $(BUILD_DIR)
	cd $(BUILD_DIR); cmake \
		-D CMAKE_BUILD_TYPE=$(BUILD_TYPE) \
		$(CMAKE_DIR) ; \
		make
.PHONY: cmake


test: $(BUILD_DIR)
	cd $(BUILD_DIR); cmake \
		-D CMAKE_BUILD_TYPE=$(BUILD_TYPE) \
		$(CMAKE_DIR) ; \
		make build_test; \
		make test
.PHONY: test


clean:
	rm -rf $(BUILD_DIR)
.PHONY: clean