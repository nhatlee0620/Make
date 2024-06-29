CC := g++
CPPFLAGS := -g -Wall

PATH_OUTPUT := output
PRO_DIR := .

INCLUDE_DIRS = $(PRO_DIR)/include1
INCLUDE_DIRS += $(PRO_DIR)/include2

SRC_DIRS = $(PRO_DIR)/src1
SRC_DIRS += $(PRO_DIR)/src2
SRC_DIRS += $(PRO_DIR)/main

INCLUDE_FILES := $(foreach DIRS, $(INCLUDE_DIRS), $(wildcard $(DIRS)/*.h))
SRC_FILES := $(foreach DIRS, $(SRC_DIRS), $(wildcard $(DIRS)/*.cpp))
OBJ_FILES := $(patsubst %.cpp,%.o,$(SRC_FILES))

print-%:
	@echo $($(subst print-,,$@))

.PHONY: build clean

build: $(OBJ_FILES)
	$(CC) $(OBJ_FILES) -o $(PRO_DIR)/$(PATH_OUTPUT)/maintest $(CPPFLAGS)

%.o : %.c $(INCLUDE_FILES)
	$(CC) $(INCLUDE_FILES) -c $< -o $(CPPFLAGS)

clean:
	rm -rf $(PRO_DIR)/$(PATH_OUTPUT)/*
	rm -rf $(OBJ_FILES)

