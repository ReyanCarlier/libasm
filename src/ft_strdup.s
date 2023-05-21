section .text
global _ft_strdup
extern _ft_strlen
extern _ft_strcpy
extern _malloc

; ft_strdup: Duplique une chaine de caractère et la retourne dans un malloc
_ft_strdup:
	call	_ft_strlen	; Appelle la fonction strlen (retourne dans rax)
	add		rax, 1		; On ajoute 1 pour le \0
	push	rdi			; On push rdi 
	mov		rdi, rax	; rdi = rax 
	call	_malloc		; malloc return (string malloc in rax)
	pop		r8			; pop old rdi to r8
	mov		rdi, rax	
	mov		rsi, r8
	call	_ft_strcpy
	ret