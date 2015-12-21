;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isblank.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/25 17:10:40 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/25 17:27:44 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_isblank

_ft_isblank:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	cmp rdi, 032
	je fin
	cmp rdi, 009
	je fin
	mov rax, 0
	leave
	ret

fin:
	mov rax, 1
	leave
	ret