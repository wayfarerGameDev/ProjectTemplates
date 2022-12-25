; Header Segment Of Rom. We Identify This Program As A NES Program
.segment "HEADER"
  .byte "NES" ; Identifier string
  .byte $1A   ; Set it to NTSC


.segment "ZEROPAGE"
.segment "STARTUP"
.segment "VECTORS"
.segment "CHARS"
