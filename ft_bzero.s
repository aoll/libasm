;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 16:19:38 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/23 16:35:57 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_bzero

_ft_bzero:
	push rdi
	mov rax, 0
	mov rcx, rsi
	rep stosb
	pop rax
	ret