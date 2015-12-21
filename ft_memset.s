;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/23 13:21:57 by aollivie          #+#    #+#              ;
;    Updated: 2015/03/23 15:35:17 by aollivie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;
	
section .text
	global _ft_memset	
	
_ft_memset:
	push rdi
	mov rax, rsi
	mov rcx, rdx
	rep stosb

end:
	pop rax
	ret