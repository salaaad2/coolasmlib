int ft_strcmp(char st1[], char st2[])
{
    int i;

    i = 0;
    while ((st1[i] == st2[i]) && st1[i] && st2[i])
        i++;
    return (st1[i] - st2[i]);
}
