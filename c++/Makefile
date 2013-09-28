CC = g++
CFLAGS = -Wall -Wextra -Werror -pedantic -std=c++98

OUT_DIR = out
SRC_DIR = src

OBJS = main.o
OUT_OBJS = $(addprefix $(OUT_DIR)/, $(OBJS))

TARGET = $(OUT_DIR)/main


all: $(TARGET) run


$(TARGET): $(OUT_DIR) $(OUT_OBJS)
	$(CC) $(LDFLAGS) $(OUT_OBJS) -o $@


$(OUT_DIR):
	mkdir -p $(OUT_DIR)


$(OUT_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@


run:
	$(TARGET)


clean:
	rm -rf $(OUT_DIR)


.PHONY: all run clean
