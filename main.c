#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "lib/libasm.h"

int main(void)
{
    // Test ft_strlen
    char *str = NULL;
    printf("Length of '%s' = %lu\n", str, ft_strlen(str));
    assert(ft_strlen(str) == strlen(str));  // Compare with standard strlen

    // Test ft_strcpy
    char dest[50];
    ft_strcpy(dest, str);
    printf("Copied string: '%s'\n", dest);
    assert(strcmp(dest, str) == 0);  // Compare with original string

    // Test ft_strcmp
    char *str1 = "Hello";
    char *str2 = "World";
    printf("Comparison of '%s' and '%s' = %d\n", str1, str2, ft_strcmp(str1, str2));
    assert(ft_strcmp(str1, str2) == strcmp(str1, str2));  // Compare with standard strcmp

    return 0;
}
