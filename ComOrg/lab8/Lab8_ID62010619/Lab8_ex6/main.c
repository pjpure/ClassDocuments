#include<stdio.h>
int main(){
    int a,b,c;
    printf("A : ");
    scanf("%d", &a);
    printf("B : ");
    scanf("%d", &b);
    int a1=a;
    int b1=b;
    c = gcd_func(a,b);
    printf("GCD of %d and %d in Assembly = %d\n",a1,b1,gcd_func(a1,b1));
    printf("GCD of %d and %d in c = %d",a,b,gcd(a,b));
return 0;
}

int gcd(int n1,int n2){
    n1 = ( n1 > 0) ? n1 : -n1;
    n2 = ( n2 > 0) ? n2 : -n2;
    while(n1!=n2)
    {
        if(n1 > n2)
            n1 -= n2;
        else
            n2 -= n1;
    }
    return n1;
}
