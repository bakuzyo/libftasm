/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vbatiot <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/07 13:53:29 by vbatiot           #+#    #+#             */
/*   Updated: 2015/03/08 19:28:36 by vbatiot          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <strings.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

extern void		ft_bzero(void *s, size_t n);
extern int		ft_isalpha(int c);
extern int		ft_isdigit(int c);

int			main(int argc, char **argv)
{
	char	*s;

	s = (char *)malloc(sizeof(char) * 5);
	ft_bzero(s, 5);
	int i;
	for(i = 0; i < 5; i++) {
		write(1, s++, 1);
	}
	return (0);
}
