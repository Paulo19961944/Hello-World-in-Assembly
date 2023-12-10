section	.text
	global _start       ;deve ser declarado para usar gcc
_start:                     ;inicia o programa
	mov	edx, len    ;move len para o registrador edx
	mov	ecx, msg    ;move a mensagem para o registrador ecx
	mov	ebx, 1	    ;move o valor 1 para o registrador ebx
	mov	eax, 4	    ;move o valor 4 para o registrador eax
	int	0x80        ;chama o kernel
	mov	eax, 1	    ;move o valor 1 para o registrador eax
	int	0x80        ;chama o kernel

section	.data

msg	db	'Hello, world!',0xa	;nosso hello world
len	equ	$ - msg			;tamanho da string