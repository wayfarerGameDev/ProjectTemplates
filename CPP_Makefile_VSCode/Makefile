# Compile | Linker
CC = g++
CC_FLAGS_DEBUG = -std=c++11 -Wall -DDEBUG -g
CC_FLAGS_RELEASE = -std=c++11
LIBRARY_PATH_64 =
LINKER_FLAGS_DEBUG_64 = -g -DDEBUG
LINKER_FLAGS_RELEASE_64 =
SOURCE_FILES =  source/main.cpp

# Build Directories
BUILD_DIR_DEBUG_64_WIN = ./build/debug_64_win/app
BUILD_DIR_RELEASE_64_WIN = ./build/release_64_win/app

# Win 64
clear_win :
	cls
build_debug_64_win: clear_win
	$(CC) $(CC_FLAGS_DEBUG) $(LIBRARY_PATH_64) -o $(BUILD_DIR_DEBUG_64_WIN) $(SOURCE_FILES) $(LINKER_FLAGS_DEBUG_64 )
run_debug_64_win: clear_win
	$(BUILD_DIR_DEBUG_64_WIN)
build_release_64_win: clear_win
	$(CC) $(CC_FLAGS_RELEASE) $(LIBRARY_PATH_64) -o $(BUILD_DIR_RELEASE_64_WIN) $(SOURCE_FILES) $(LINKER_FLAGS_RELEASE_64)
run_release_64_win: clear_win
	$(BUILD_DIR_RELEASE_64_WIN)