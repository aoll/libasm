;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 18:51:18 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/24 15:43:00 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;


%define SCALL(nb)   0x2000000 | nb
%define STDOUT      1
%define WRITE       4
		
section .text
	global _ft_putstr
	extern _ft_strlen
	
_ft_putstr:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	call _ft_strlen
	mov rbx, rdi
	mov rdi, 1
	mov rsi, rbx
	mov rdx, rax 
	mov rax, SCALL(4)
	syscall
	leave
	ret