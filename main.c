/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/16 12:47:00 by aollivie          #+#    #+#             */
/*   Updated: 2015/03/26 15:18:27 by aollivie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <ctype.h>

void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *restrict s1, const char *restrict s2);
int		ft_isdigit(int c);
int		ft_isalpha(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);

size_t  ft_strlen(const char *s);
int		ft_puts(const char *s);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *restrict dst, const void *restrict src, size_t n);
char	*ft_strdup(const char *s1);

void	ft_cat2(int fd);
void	ft_cat(int fd);

char	*ft_strnew(size_t len);
void	ft_putstr(char *s);
void	ft_putstr_fd(char *s, int fd);
int		ft_isblank(int c);
int		ft_isspace(int c);


void	bzmain(void)
{
	char *s;
	
	s = ft_strdup("salut");
	ft_putstr("ft_bzero = "), ft_bzero(s, 0), ft_putstr(s);
	s = ft_strdup("salut");
	ft_putstr(" /  bzero = "), bzero(s, 0), ft_puts(s);
	ft_putstr("\n");
	s = ft_strdup("salut");
	ft_putstr("ft_strcat = "), s = ft_strcat(s, "ok"), ft_putstr(s);
	s = ft_strdup("salut");
	ft_putstr(" / strcat = "), s = strcat(s, "ok"), ft_puts(s);
	ft_putstr("\n");
}

void	ismain(void)
{
	int i;
	char c;
	
	c = 'i';
	ft_putstr("ft_isdigit = "), i = ft_isdigit(c), ((i == 1) ? ft_putstr("1") : ft_putstr("0"));
	ft_putstr(" / isdigit = "), i = isdigit(c), ((i == 1) ? ft_putstr("1") : ft_puts("0"));
	ft_putstr("\n");
	ft_putstr("ft_isalpha = "), i = ft_isalpha(c), ((i == 1) ? ft_putstr("1") : ft_putstr("0"));
	ft_putstr(" / isalpha = "), i = isalpha(c), ((i == 1) ? ft_putstr("1") : ft_puts("0"));
	ft_putstr("\n");
	ft_putstr("ft_isalnum = "), i = ft_isalnum(c), ((i == 1) ? ft_putstr("1") : ft_putstr("0"));
	ft_putstr(" / isalnum = "), i = isalnum(c), ((i == 1) ? ft_putstr("1") : ft_puts("0"));
	ft_putstr("\n");
	ft_putstr("ft_isascii = "), i = ft_isascii(128), ((i == 1) ? ft_putstr("1") : ft_putstr("0"));
	ft_putstr(" / isascii = "), i = isascii(128), ((i == 1) ? ft_putstr("1") : ft_puts("0"));
	ft_putstr("\n");
	ft_putstr("ft_isprint = "), i = ft_isprint(c), ((i == 1) ? ft_putstr("1") : ft_putstr("0"));
	ft_putstr(" / isprint = "), i = isprint(c), ((i == 1) ? ft_putstr("1") : ft_puts("0"));
	ft_putstr("\n");
}

void	memmain(void)
{
	char c;
	char w;
	char *s;
	int i;
	char *s2;

	w = 'o';
	ft_putstr("ft_toupper = "), c = ft_toupper(w), printf("%c\n", c);
	ft_putstr("toupper = "), c = toupper(w), printf("%c\n", c);
	ft_putstr("\n");
	ft_putstr("ft_tolower = "), c = ft_tolower(w), printf("%c\n", c);
	ft_putstr("tolower = "), c = tolower(w), printf("%c\n", c);
	ft_putstr("\n");
	ft_putstr("ft_puts = "), ft_puts("yo");
	ft_putstr("puts = "), puts("yo");
	ft_putstr("\n");
	ft_putstr("ft_strlen = "), i = ft_strlen("hehe"), printf("%d\n", i);
	ft_putstr("strlen = "), i = strlen("hehe"), printf("%d\n", i);
	ft_putstr("\n");
	s = ft_strdup("toto");
	ft_putstr("ft_memset = "), s = ft_memset(s, 'a', 2), ft_putstr(s);
	s = ft_strdup("toto");
	ft_putstr(" / memset = "), s = memset(s, 'a', 2), ft_puts(s);
	ft_putstr("\n");
	s = ft_strdup("tutu");
	s2 = ft_strdup("ole");
	ft_putstr("ft_memcpy = "), ft_memcpy(s, s2, 0), ft_putstr(s);
	s = ft_strdup("tutu");
	ft_putstr(" / memcpy = "), memcpy(s, s2, 0), ft_puts(s);
	ft_putstr("\n");
	ft_putstr("ft_strdup = "), s = ft_strdup("salut"), ft_putstr(s);
	ft_putstr(" / strdup = "), s = ft_strdup("salut"), ft_puts(s);
	ft_putstr("\n");
}


int		main(int ac, char **av)
{
	int i;

	if (ac < 0)
		return (0);
	bzmain();
	ismain();
	memmain();

	ft_cat(0);
	ft_putstr("\n");
	ft_cat(open(av[0], O_RDONLY));
	ft_cat(open(__FILE__, O_RDONLY));
	ft_cat(-42);

	ft_putstr("ft_putstr = ");
	ft_putstr("okkkk\n");

	ft_putstr("ft_putstr_fd = ");
	ft_putstr_fd("slt\n", 0);

	ft_putstr("ft_isblank = ");
	i = ft_isblank('\t');
	printf("%d\n", i);	

	ft_putstr("ft_isspace = ");
	i = ft_isspace(' ');
	printf("%d\n", i);		
	return (0);
}
