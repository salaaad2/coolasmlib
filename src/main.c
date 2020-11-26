#include "../inc/libasm.h"
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    char dest[5];
    /* char *str; */
    char str[5];
    char writeme[5] = "jajaj";
    int fd;

    /* str = (char*)malloc(sizeof(char) * 5); */
    fd = open("Makefile", 0);

    printf("***********STRLEN***********\n");
	printf("%d\n", ft_strlen("1"));
	printf("%d\n", ft_strlen(""));
	printf("%d\n", ft_strlen("bon"));
	printf("%d\n", ft_strlen("bonjour"));
	printf("%d\n", ft_strlen("asdfasdf''///##!!@"));
	printf("%d\n", ft_strlen("the\0hidden"));
	printf("%d\n", ft_strlen("Lorem ipsum dolor sit amet, consectetur adipiscing\
elit. Sed in malesuada purus. Etiam a scelerisque massa. Ut non euismod elit. Aliquam\
bibendum dolor mi, id fringilla tellus pulvinar eu. Fusce vel fermentum sem. Cras\
volutpat, eros eget rhoncus rhoncus, diam augue egestas dolor, vitae rutrum nisi\
felis sed purus. Mauris magna ex, mollis non suscipit eu, lacinia ac turpis. Phasellus\
ac tortor et lectus fermentum lobortis eu at mauris. Vestibulum sit amet posuere\
tortor, sit amet consequat amet."));
    printf("***********STRCMP***********");
    printf("strcmp :%d\n", ft_strcmp("qweqweqwe", "qweqweqwe"));
    printf("strcpy :%s\n", ft_strcpy(dest, "abcde"));
    printf("strdup :%s\n", ft_strdup("nique les stups"));
    printf("write  :%zd\n", ft_write(1, writeme, 5));
    printf("read   :%zd\n", ft_read(fd, str, 5));
    printf("str    :%s\n", str);
}
