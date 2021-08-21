# as -o HelloWorld.o HelloWorld.s
# gcc -no-pie HelloWorld.o -o HelloWorld

.global main

main:
	mov $mensagem, %rdi
	call puts
	ret

mensagem:
	.asciz	"Olá Mundo"
