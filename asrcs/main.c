#include "../inc/libasm.h"
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    char dest[5];
    char *str;
    int fd;

    str = (char*)malloc(sizeof(char) * 5);
    fd = open("Makefile", 0);

    printf("strlen :%d\n", ft_strlen("abcde"));
    printf("strcmp :%d\n", ft_strcmp("qweqweqwe", "qweqweqwe"));
    printf("strcpy :%s\n", ft_strcpy(dest, "abcde"));
    printf("strdup :%s\n", ft_strdup("nique les stups"));
    printf("write  :%zd\n", ft_write(1, "asdasda", 5));
    printf("read   :%zd\n", ft_read(fd, str, 5));
    printf("str    :%s\n", str);
}
