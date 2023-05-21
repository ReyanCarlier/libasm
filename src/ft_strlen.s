section .text
	global _ft_strlen

_ft_strlen:
	xor rax, rax	; Initialise le compteur (RAX) à 0

.loop:
	cmp byte [rdi + rax], 0	; Compare le byte courant avec null
	je .end			; S'il est null, jump à end
	inc rax			; Sinon, on incrémente le compteur
	jmp .loop		; Continue jusqu'au prochain caractère

.end:
	ret			; Retourne la valeur de RAX.
