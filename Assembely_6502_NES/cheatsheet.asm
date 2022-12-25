; Assembely Directives
.segment "SEGMENT_NAME"         ;; used to contain a specific type of data
.addr value                     ;; initialises the next four bytes (or eight bytes in 64-bit mode) to the address of its argument.
.word value                     ;; allocate and initialize space for a variable

; Data Commands
cld                             ;; (short for "CLear Decimal flag") clears the decimal flag, thereby disabling decimal number support
sei                             ;; (short for "SEt Interrupt flag") sets the interrupt flag, thereby preventing the CPU from responding to IRQ interrupt events
sta value                       ;; (short for "STore Accumulator") for copying data(byte) from accumulator to memory location
lda value                       ;; (short for "LoaD Accumulator") for copying data from memory location to accumulator
rti                             ;; (short for "ReTurn from Interrupt") return from a interrupt