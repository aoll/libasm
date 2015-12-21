;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/24 14:55:52 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/24 14:56:05 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;


section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strnew
	extern _ft_memcpy

_ft_strdup:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	call _ft_strlen
	mov rdx, rax
	push rdx
	mov rsi, rdi
	push rsi
	mov rdi, rsi
	call _ft_strnew
	mov rdi, rax
	pop rsi
	pop rdx
	call _ft_memcpy
	pop rsi
	leave
	ret