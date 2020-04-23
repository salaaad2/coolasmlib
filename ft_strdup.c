#include <stdlib.h>

extern int ft_strlen(char s[]);

char *ft_strdup(char s[])
{
    char *ret;
    int8_t len;
    int8_t it;


    it = -1;
    len = ft_strlen(s);
    if (!(ret = malloc(len * sizeof(char))))
        return (NULL);
    while (++it < len)
    {
        ret[it] = s[it];
    }
    ret[it] = '\0';
    return (ret);
}
