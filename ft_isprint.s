;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/17 17:57:29 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/17 18:04:08 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global start
	global _ft_isprint

_ft_isprint:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	cmp rdi, ' '
	jl fin
	cmp rdi, '~'
	jg fin
	mov rax, 1
	leave
	ret
fin:
	mov rax, 0
	leave
	ret