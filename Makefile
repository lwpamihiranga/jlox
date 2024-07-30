# Directories
SRC_DIR = lox
BUILD_DIR = build

# Source and Target
MAIN_CLASS=Lox
SRC = $(SRC_DIR)/$(MAIN_CLASS).java
TARGET = $(BUILD_DIR)/$(MAIN_CLASS).class

# Commands
JAVAC = javac
JAVA = java

# Default target
.PHONY: all build run clean

all: build run

# Compilation rule
build: $(TARGET)

$(TARGET): $(SRC)
	mkdir -p $(BUILD_DIR)
	$(JAVAC) -d $(BUILD_DIR) $(SRC)

# Run the program
run:
	cd ./$(BUILD_DIR) && $(JAVA) $(SRC_DIR).$(MAIN_CLASS)

# Clean up build directory
clean:
	rm -rf $(BUILD_DIR)
