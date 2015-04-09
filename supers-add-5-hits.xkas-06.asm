; Copyright 2015 Adam <https://github.com/n00btube>
; MIT license.
; There _could_ be newer versions available on GitHub.

lorom

; hijack point: red door hit by super missile
org $84BD7F
	LDA $7EDF0C,X   ; get hit counter
	JSR add_hits
	; BRA <add one and check hits next frame>

; place this anywhere you have free space in bank $84
org $84FFB0
add_hits:
	CLC
	ADC #$0004      ; add additional hits
	STA $7EDF0C,X   ; write back to hit counter
	RTS
