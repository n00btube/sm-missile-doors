; Copyright 2015 Adam <https://github.com/n00btube>
; MIT license.
; There _could_ be newer versions available on GitHub.

lorom

; red door hit detection: rewrite in place, no free space used
org $84BD58
	CMP #$0100  ; regular missile?
	BEQ $05     ; $BD62, after super missile check we're about to nuke
	JMP $BD74   ; it's never a super missile

