; Copyright 2015 Adam <https://github.com/n00btube>
; MIT license.
; There _could_ be newer versions available on GitHub.

; Derp.  JAM found a hex tweak for this very thing.  It just NOPs out the
; super missile CMP/BEQ right there at $84:BD58.
;
; The only reasons to use THIS are:
; 1. if you like ASM as much as I do
; 2. if wasting cycles on five NOPs per projectile hit bugs you

lorom

; red door hit detection: rewrite in place, no free space used
org $84BD58
	CMP #$0100  ; check regular missile instead of super
	BEQ $05     ; $BD62, regular missile code
	JMP $BD74   ; non-reaction code

