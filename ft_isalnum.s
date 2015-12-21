;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/17 16:09:03 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/26 14:05:19 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .data
	c dd
	
section .text
	global start
	global _ft_isalnum
	extern _ft_isalpha
	extern _ft_isdigit
		
_ft_isalnum:
	push rbp
	mov rbp, rsp
	sub rsp, 64
	cmp rdi, '0'
	je fin
	cmp rdi, '1'
	je fin
	cmp rdi, '2'
	je fin
	cmp rdi, '3'
	je fin
	cmp rdi, '4'
	je fin
	cmp rdi, '5'
	je fin
	cmp rdi, '6'
	je fin
	cmp rdi, '7'
	je fin
	cmp rdi, '8'
	je fin
	cmp rdi, '9'
	je fin
	call _ft_isalpha
	push rax
	cmp rax, 1
	je fin
	call _ft_isdigit
	push rax
	cmp rax, 1
	je fin
	mov rax, 0
	leave
	ret
fin:
	mov rax, 1
	leave
	ret
	