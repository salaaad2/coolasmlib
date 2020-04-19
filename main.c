#include <stdio.h>
#include <string.h>

extern int ft_strlen(char str[]);
extern int ft_strcmp(char st1[], char st2[]);
extern char *ft_strcpy(char st1[], char st2[]);

int main(void)
{
    char str[5];
    char dest[5];
    printf("strlen :%d\n", ft_strlen("abcde"));
    printf("strcmp :%d\n", ft_strcmp("qweqweqwe", "qweqweqwe"));
    printf("strcpy :%s\n", ft_strcpy(dest, "abcde"));
}
