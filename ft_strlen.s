;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/24 17:51:23 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/24 17:51:35 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;


section .text
	global _ft_strlen

_ft_strlen:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	push rdi
	sub	rcx, rcx
	not	rcx
	sub	al, al
	cld
	repne scasb
	not	rcx
	pop	rdi
	lea	rax, [rcx]
	dec rax
	leave
	ret