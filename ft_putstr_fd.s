;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr_fd.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/25 17:02:26 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/25 17:02:51 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

%define SCALL(nb)   0x2000000 | nb
%define WRITE       4
		
section .text
	global _ft_putstr_fd
	extern _ft_strlen
	
_ft_putstr_fd:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	call _ft_strlen
	mov rbx, rdi
	mov rdi, rsi
	mov rsi, rbx
	mov rdx, rax 
	mov rax, SCALL(4)
	syscall
	leave
	ret