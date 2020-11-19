#include <stdio.h>

extern "C"
{
    void bar(void);
}

void bar(void)
{
    printf("bar\n");
}
