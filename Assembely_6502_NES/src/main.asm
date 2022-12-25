
; Header Segment Of Rom. We Identify This Program As A NES Program
.segment "HEADER"
  .byte "NES", $1A                                                                     ;; Identifier string and byte,every NES program needs this 
  .byte $02                                                                            ;; How much PRG-ROM data we want/have in 16K units
  .byte $01                                                                            ;; How mu ch CHR-ROM data we want/have in 8K units
  .byte $00                                                                            ;; What type of mapping and mirroring we want to use (We don't want any)

; NES linker config requires a STARTUP section, even if it's empty
.segment "STARTUP"

; Defenitions For Three Types Of Interrupts That Can Happen On NES.
.segment "VECTORS"
  .addr nmi                                                                             ;; When an NMI happens (once per frame if enabled) the label nmi.             https://www.nesdev.org/wiki/The_frame_and_NMIs
  .word reset                                                                           ;; When the processor first turns on or is reset.                             https://www.nesdev.org/wiki/Init_code
  .addr 0                                                                               ;; External interrupt IRQ (unused)

; Sprite Data
.segment "CHARS"

; Where Our Game Code And Game Data Lives
.segment "CODE"

nmi:
  rti

reset:
  sei		                                                                                ;; Disable IRQs
  cld                                                                                   ;; NES does not have decimal mode so its just good practice to turn it off

  ; Basic Hello World With Audio                                                        ;;                                                                            https://www.nesdev.org/wiki/Programming_Basics
  lda #$01	; square 1
  sta $4015
  lda #$08	; period low
  sta $4002
  lda #$02	; period high
  sta $4003
  lda #$bf	; volume
  sta $4000