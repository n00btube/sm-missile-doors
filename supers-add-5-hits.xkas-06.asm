; Copyright 2015 Adam <https://github.com/n00btube>
; MIT license.
; There _could_ be newer versions available on GitHub.

lorom

; hijack point: red door hit by super missile
org $84BD7F
	; overwrite "LDA #119; STA $7EDF0C,X".  if we use the same number of bytes
	; here, we can use their branch for free.
	LDA $7EDF0C,X   ; get hit counter
	JSR add_hits
	; BRA <add one hit and check hits next frame>

; place this anywhere you have free space in bank $84
org $84FFB0
add_hits:
	CLC
	ADC #$0004      ; add additional hits
	STA $7EDF0C,X   ; write back to hit counter
	RTS
