;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/17 14:57:16 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/25 18:06:33 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .data
	c dd 1
	
section .text
	global start
	global _ft_isdigit

_ft_isdigit:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	mov rax, [rel c]
	cmp rdi, '0'
	jl fin
	cmp rdi, '9'
	jg fin
	leave
	ret
fin:
	dec rax
	leave
	ret