; RDI : Destination string
; RSI : Source string

section .text
global ft_strcpy

ft_strcpy:
	xor rcx, rcx	; Initialise le compteur RCX à 0

.loop:
	movzx rax, byte [rsi + rcx]	; Charge le byte courant de la string
	mov byte [rdi + rcx], al	; Enregistre le byte dans RSI
	inc rcx				; Incrémentation du compteur
	test al, al			; Test si le byte est null
	jnz .loop			; S'il n'est pas null, on continue au prochain caractère

	ret
