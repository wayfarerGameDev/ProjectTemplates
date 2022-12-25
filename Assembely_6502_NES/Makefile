# Files
SOURCE_FILE = ./src/main.asm
COMPILE_FILE = ./build/output.o
ROM_FILE = ./build/game.nes

# Compile Variables
CA65 = ca65
CA65_SOURCE  = $(SOURCE_FILE)
CA65_FLAGS_DEBUG = -g
CA65_OUTPUT_FILE = -o $(COMPILE_FILE)
CA65_SYSTEM = -t nes

# Linker Variables
LD65 = ld65
LD65_COMPILE_FILE = $(COMPILE_FILE)
LD65_OUTPUT_FILE  = -o $(ROM_FILE) -C nes.cfg

# Compile | Linker
build_debug:
	$(CA65) $(CA65_SOURCE) $(CA65_FLAGS_DEBUG) $(CA65_OUTPUT_FILE) $(CA65_SYSTEM)
	$(LD65) $(LD65_COMPILE_FILE) $(LD65_OUTPUT_FILE)