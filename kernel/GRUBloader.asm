MAGIC equ 0x1BADB002
FLAGS equ 0
CHECKSUM equ -(MAGIC + FLAGS)

section .multiboot

global bootGRUB

; extern bss
; extern text
; extern end
; extern _loadkernel

dd MAGIC ; multiboot 2
dd FLAGS
dd CHECKSUM
;dd bootGRUB
;dd .bss
;dd .text
;dd .end
;dd _loadkernel

