;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 16:42:32 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/26 11:53:48 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_strcat
	extern _ft_strlen
	
_ft_strcat:
	push rbp
	mov rbp, rsp
	call _ft_strlen
	mov rbx, rax
begin:
	cmp rax, 0
	je suite
	inc rdi
	dec rax
	jmp begin

suite:
	mov rdx, rdi
	mov rdi, rsi
	call _ft_strlen
	mov rsi, rdi
	mov rdi, rdx
	push rdi
	mov rcx, rax
	mov rax, rsi
	rep movsb

	mov rcx, 1
	mov rax, 0h
	rep movsb
	pop rax
fin:
	cmp rbx, 0
	je end
	dec rax
	dec rbx
	jmp fin
end:
	leave
	ret