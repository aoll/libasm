;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/17 18:16:24 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/17 18:20:13 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section	.text
	global _ft_tolower

_ft_tolower:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	mov	rax, rdi
	cmp	rax, 'A'
	jge	midle
	leave
	ret

midle:
	cmp rax, 'Z'
	jle fin
	leave
	ret

fin:
	add rax, 32
	leave
	ret