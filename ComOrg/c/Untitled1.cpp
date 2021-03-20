#include<stdio.h>
main(){
	int n = 10,sum = 0;
	for(;n>0;){
		sum = sum+n-1;
		n=n-2;
	}
	printf("%d",sum);
	
}

