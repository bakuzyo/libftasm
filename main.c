/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vbatiot <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/07 13:53:29 by vbatiot           #+#    #+#             */
/*   Updated: 2015/03/08 21:49:50 by vbatiot          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <strings.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

extern void		ft_bzero(void *s, size_t n);
extern int		ft_isalnum(int c);
extern int		ft_isalpha(int c);
extern int		ft_isdigit(int c);
extern int		ft_isascii(int c);
extern int		ft_isprint(int c);

int			main(int argc, char **argv)
{
	printf("%d\n", ft_isprint('z'));
	return (0);
}
