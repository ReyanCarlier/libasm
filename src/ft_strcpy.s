; RDI : Destination string
; RSI : Source string

section .text
	global _ft_strcpy

; ft_strcpy: Copie la chaîne de caractères pointée par src (y compris l'octet nul « \0 » final) dans la chaîne pointée par dest.
; Le résultat est poussé dans RAX.
_ft_strcpy:
	mov		rax, 0					; Initialise RAX à 0
	jmp 	.copy					; Saute à la fonction copy

.copy:
	cmp		byte [rsi + rax], 0		; Compare le caractère de la source avec 0
	je 		.exit					; Si c'est 0, on arrive à la fin de la chaîne
	mov		cl, [rsi + rax]			; Sinon, on copie le caractère de la source dans CL
	mov		[rdi + rax], cl			; On copie CL dans la destination
	inc		rax						; On incrémente RAX
	jmp		.copy					; On revient au début de la fonction copy

.exit:
	mov		cl , 0					; On met 0 dans CL (pour le dernier caractère)
	mov		[rdi + rax], cl			; rdi[rax] = cl = 0
	mov		rax, rdi				; On met le résultat dans RAX
	ret								; On retourne le résultat