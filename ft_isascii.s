;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/17 17:18:58 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/26 13:06:58 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .data
	    c dd 1

section .text
	global start
	global _ft_isascii

_ft_isascii:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	cmp rdi, 128
	je fin
	cmp rdi, 0
	jl fin
	cmp rdi, 177
	jg fin
	mov rax, 1
	leave
	ret
fin:
	mov rax, 0
	leave
	ret