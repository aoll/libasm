;******************************************************************************;
;                                                                              ;
;                                                   :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/17 15:40:41 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/17 16:34:30 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

	
section .text
	global start
	global _ft_isalpha

star:
	call _ft_isalpha
	ret

_ft_isalpha:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	cmp rdi, 'a'
	jl more
	cmp rdi, 'z'
	jg more
	mov rax, 1
	leave
	ret
more:
	cmp rdi, 'A'
	jl null
	cmp rdi, 'Z'
	jg null
	mov rax, 1
	leave
	ret
null:
	mov rax, 0
	leave
	ret