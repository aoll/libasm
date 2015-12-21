;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strnew.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/24 12:41:40 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/24 15:21:57 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
	
section .text
	global _ft_strnew
	extern _malloc
	extern _ft_memset
	
_ft_strnew:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	inc rdi
	mov rdx, rdi
	call _malloc
	mov rdi, rax
	mov rsi, 0h
	call _ft_memset
	leave
	ret