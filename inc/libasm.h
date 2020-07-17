#ifndef LIBASM_H_
#define LIBASM_H_

#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

ssize_t ft_write(int fd, const void *buf, unsigned int len);
ssize_t ft_read(int fd, void *buf, unsigned int count);
int ft_strlen(char str[]);
int ft_strcmp(char st1[], char st2[]);
char *ft_strcpy(char st1[], char st2[]);
char *ft_strdup(char s[]);

#endif
