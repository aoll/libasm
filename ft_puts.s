;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/22 18:51:18 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/26 15:36:06 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%define SCALL(nb)   0x2000000 | nb
%define STDOUT      1
%define WRITE       4
	
section .data
hello:	
	.string db "", 10
	.len equ $ - hello.string
	.null db "(null)", 10
	.l equ $ - hello.string
	
section .text
	global _ft_puts
	extern _ft_strlen
	
_ft_puts:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	cmp rdi, 0
	je fin
	call _ft_strlen
	mov rbx, rdi
	mov rdi, 1
	mov rsi, rbx
	mov rdx, rax 
	mov rax, SCALL(4)
	syscall
	jc err
	mov rdi, 1
	lea rsi, [rel hello.string]
	mov rdx, hello.len
	mov rax, SCALL(4)
	syscall
	jc err
	leave
	ret
fin:
	mov rdi, 1
	lea rsi, [rel hello.null]
	mov rdx, hello.l
	mov rax, SCALL(4)
	syscall
	jc err
	mov rax, 10
	leave
	ret
err:
	mov rax, -1
	leave
	ret