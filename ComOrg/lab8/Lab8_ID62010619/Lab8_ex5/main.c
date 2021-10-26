#include<stdio.h>
int main(){
    int a,b,c;
    printf("A : ");
    scanf("%d", &a);
    printf("B : ");
    scanf("%d", &b);
    c = mod_func(a,b);
    printf("%d mod %d in Assembly = %d\n",a,b,c);
    printf("%d mod %d in c = %d",a,b,a%b);
return 0;
}