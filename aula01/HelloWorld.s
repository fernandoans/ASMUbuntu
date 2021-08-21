# Mostrar um Hello World!
#
# as -o HelloWorld.o HelloWorld.s
# ld -o HelloWorld HelloWorld.o

.section .data
	msg:	.string	"Hello World Olá\n"
	tam:	.long	. - msg

.section .bss

.section .text

.global _start

_start:
	mov $0x4, %rax
	mov $0x1, %rbx
	lea msg, %rcx
	mov tam, %rdx
	int $0x80
	
	mov $0x1, %rax
	mov $0x0, %rbx
	int $0x80
