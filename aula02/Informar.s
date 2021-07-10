# Entrada de Dados
#
# as -o Informar.o Informar.s
# ld -o Informar Informar.o
.section .data
	msg:	.string	", seja muito bem vindo!\n"
	tam:	.long	. - msg

.section .bss
	nome: .string ""

.section .text

.global _start

_start:
	mov $0x3, %rax
	mov $0x0, %rbx
	lea nome, %rcx
	mov $0x5, %rdx
	int $0x80
	
	mov $0x4, %rax
	mov $0x1, %rbx
	lea nome, %rcx
	mov $0x5, %rdx
	int $0x80

	mov $0x4, %rax
	mov $0x1, %rbx
	lea msg, %rcx
	mov tam, %rdx
	int $0x80

	mov $0x1, %rax
	mov $0x0, %rbx
	int $0x80
