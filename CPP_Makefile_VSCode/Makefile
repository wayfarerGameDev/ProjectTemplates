# Compile | Linker
CC = g++
CC_FLAGS_DEBUG = -std=c++11 -Wall -DDEBUG -g
CC_FLAGS_RELEASE = -std=c++11
LIBRARY_PATH_64 =
LINKER_FLAGS_DEBUG_64 =
LINKER_FLAGS_RELEASE_64 =
SOURCE_FILES =  source/main.cpp

# Build Directories
BUILD_DIR_DEBUG_WIN_64 = ./build/debug_win_64/app
BUILD_DIR_RELEASE_WIN_64 = ./build/release_win_64/app

# Win 64
clear_win :
	cls
build_debug_win_64: clear_win
	$(CC) $(CC_FLAGS_DEBUG) $(LIBRARY_PATH_64) -o $(BUILD_DIR_DEBUG_WIN_64) $(SOURCE_FILES) $(LINKER_FLAGS_DEBUG_64 )
run_debug_win_64: clear_win
	$(BUILD_DIR_DEBUG_WIN_64)
build_release_win_64: clear_win
	$(CC) $(CC_FLAGS_RELEASE) $(LIBRARY_PATH_64) -o $(BUILD_DIR_RELEASE_WIN_64) $(SOURCE_FILES) $(LINKER_FLAGS_RELEASE_64)
run_release_win_64: clear_win
	$(BUILD_DIR_RELEASE_WIN_64)