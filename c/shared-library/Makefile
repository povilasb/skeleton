CC = gcc
CFLAGS = -std=gnu99 -Wall -Wextra -Werror -pedantic -fPIC
LDFLAGS = -shared -fPIC

SRC_DIR = src
OUT_DIR = out
TARGET = $(OUT_DIR)/libmain.so

OBJS = main.o
OUT_OBJS = $(addprefix $(OUT_DIR)/, $(OBJS))

RUN_ARGS =


all: $(TARGET)


$(TARGET): $(OUT_DIR) $(OUT_OBJS)
	$(CC) $(LDFLAGS) $(OUT_OBJS) -o $@


$(OUT_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@


$(OUT_DIR):
	mkdir -p $(OUT_DIR)


clean:
	rm -rf $(OUT_DIR)


.PHONY: all clean
