;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isspace.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/25 17:35:24 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/25 18:02:40 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;


section .text
	global _ft_isspace

_ft_isspace:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	cmp rdi, 032
	je fin
	cmp rdi, 009
	je fin
	cmp rdi, 10
	je fin
	cmp rdi, 11
	je fin
	cmp rdi, 12
	je fin
	cmp rdi, 13
	je fin
	mov rax, 0
	leave
	ret

fin:
	mov rax, 1
	leave
	ret