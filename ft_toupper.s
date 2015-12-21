;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/17 18:07:51 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/17 18:15:10 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_toupper

_ft_toupper:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	mov rax, rdi
	cmp rax, 'a'
	jge midle
	leave
	ret
	
midle:
	cmp rax, 'z'
	jle fin
	leave
	ret

fin:
	sub rax, 32
	leave
	ret