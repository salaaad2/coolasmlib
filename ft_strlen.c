#include <inttypes.h>

int ft_strlen(char *str)
{
    int8_t it;

    it = -1;
    while (str[++it])
        ;
    return (it);
}
