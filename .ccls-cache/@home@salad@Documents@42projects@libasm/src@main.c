#include "../inc/libasm.h"
#include <stdio.h>
#include <stdlib.h>

#define FT_STRCPY_BUF_SIZE (1 << 12)
#define FT_WRITE_BUF_SIZE (1 << 12)

int main(void)
{
    static char buf[FT_WRITE_BUF_SIZE] = {0};
    char str[6] = {0};

    printf("\n\n***********STRLEN***********\n");
	printf("%d\n", ft_strlen("asdfasdf''///##!!@"));

    printf("\n\n***********STRCMP***********\n");
    printf("%d\n", ft_strcmp("qweqweqwe", "qweqweqwe"));
	printf("%d\n", ft_strcmp("", ""));
	printf("%d\n", ft_strcmp("bon", ""));

    printf("\n\n***********STRCPY***********\n");
    printf("%s\n", ft_strcpy(buf, "abcde"));
	printf("%s\n", ft_strcpy(buf, ""));
	printf("%s\n", ft_strcpy(buf, "abc"));
	printf("%s\n", ft_strcpy(buf, "asl;fjl;asdjfjkasdl;fjadjsf"));

    printf("\n\n***********STRDUP***********\n");
    char *dupme = "Lorem ipsum dolor sit amet, consectetur adipiscing\
felis sed purus. Mauris magna ex, mollis non suscipit eu, lacinia ac turpis. Phasellus\
ac tortor et lectus fermentum lobortis eu at mauris. Vestibulum sit amet posuere\
tortor, sit amet consequat amet.";
	printf("strdup :%s\n", ft_strlen(dupme), ft_strdup(dupme));
	printf("strdup :%s\n", ft_strdup("\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0b\x0c\x0d\x0e\x0f"));
	printf("strdup :%s\n", ft_strdup("\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0b\x0c\x0d\x0e\x0f"));

    printf("\n\n\n***********WRITE***********\n");
    char writeme[5] = "jajaj";
    int fd;
    fd = open("Makefile", 0);
    printf("write  :%zd\n", ft_write(1, writeme, 5));

    printf("\n\n\n***********READ***********\n");
    printf("read   :%zd\n", ft_read(fd, str, 5));
    printf("str    :%s\n", str);
}
