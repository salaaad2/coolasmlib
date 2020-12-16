#ifndef LIBASM_H_
#define LIBASM_H_

#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

ssize_t ft_write(int fd, const void *buf, unsigned int len);
ssize_t ft_read(int fd, void *buf, unsigned int count);
unsigned int ft_strlen(const char str[]);
int ft_strcmp(const char st1[], const char st2[]);
char *ft_strcpy(char st1[], const char st2[]);
char *ft_strdup(const char s[]);

#endif
