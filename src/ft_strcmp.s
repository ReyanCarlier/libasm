; RDI : Première string (s1)
; RSI : Deuxième string (s2)

section .text
	global _ft_strcmp

_ft_strcmp:
	mov rax, rdi	; RAX pointe sur le début de s1
	mov rcx, rsi	; RCX pointe sur le début de s2
	
.loop:
	movzx r8, byte [rax]	; R8 = *s1
	movzx r9, byte [rcx]	; R9 = *s2
	cmp r8, r9		; Compare *s1 et *s2
	jne .done		; Si *s1 != *s2, sort de la boucle
	test r8, r8		; Teste si *s1 == '\0'
	jz .done		; 	=> OUI : sort de la boucle
	test r9, r9		; Teste si *s2 == '\0'
	jz .done		; 	=> OUI : sort de la boucle
	inc rax			; On avance dans s1
	inc rcx			; On avance dans s2
	jmp .loop		; On retourne au début de la boucle

.done:
	sub r8, r9		; R8 = *s1 - *s2
	mov rax, r8		; RAX = R8
	ret
