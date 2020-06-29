#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

extern ssize_t ft_read(int fd, void *buf, unsigned int count);
extern ssize_t ft_write(int fd, const void *buf, unsigned int len);
extern int ft_strlen(char str[]);
extern int ft_strcmp(char st1[], char st2[]);
extern char *ft_strcpy(char st1[], char st2[]);
extern char *ft_strdup(char s[]);

int main(void)
{
    char dest[5];
    char str[17];
    int fd;

    fd = open("Makefile", 0);
    printf("strlen :%d\n", ft_strlen("abcde"));
    printf("strcmp :%d\n", ft_strcmp("qweqweqwe", "qweqweqwe"));
    printf("strcpy :%s\n", ft_strcpy(dest, "abcde"));
    printf("strdup :%s\n", ft_strdup("nique les stups"));
    printf("write  :%zd\n", ft_write(1, "asdasda", 5));
    printf("read   :%zd\n", ft_read(fd, str, 5));
    printf("str    :%s\n", str);
}
