section	.text
	global _start       ;deve ser declarado para usar gcc
_start:                     ;inicia o programa
	mov	edx, len    ;tamanho da mensagem
	mov	ecx, msg    ;printa a mensagem na tela
	mov	ebx, 1	    ;descrição do arquivo
	mov	eax, 4	    ;(sys_write)
	int	0x80        ;chama o kernel
	mov	eax, 1	    ;(sys_exit)
	int	0x80        ;chama o kernel

section	.data

msg	db	'Hello, world!',0xa	;nosso hello world
len	equ	$ - msg			;tamanho da string