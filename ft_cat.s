;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/24 14:43:06 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/26 15:01:25 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%define SCALL(nb)	0x2000000 | nb
%define READ		3

section .data
	buff  db 0
	buffsize equ $ - buff
	
section .text
	global _ft_cat	
	
_ft_cat:
	push rbp
	mov rbp, rsp
	mov rbx, rdi
debut:	
	mov rdi, rbx
	push rbx
	lea rsi, [rel buff]
	mov rdx, buffsize
	mov rax, SCALL(3)
	syscall
	jc fin
	cmp rax, 0
	je fin
	mov rdi, 1
	mov rdx, rax
	mov rax, SCALL(4)
	syscall
	jmp debut
fin:	
	leave
	ret