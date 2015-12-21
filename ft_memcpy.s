;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 17:28:33 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/26 13:21:34 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_memcpy

_ft_memcpy:
	cmp rdx, 0
	je fin
	mov rcx, rdx
	rep movsb
	ret
fin:
	mov rax, rdi
	ret