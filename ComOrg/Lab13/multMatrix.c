#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <omp.h>
#define N 200
float A[N][N], B[N][N], C[N][N]; // matrices of NxN elements
int main () {
/* DECLARING VARIABLES */
int i, j, k; // indices for matrix multiplication
float t_mul; // Multiply time
clock_t c_1, c_2; // start time and stop time
/* FILLING MATRICES WITH RANDOM NUMBERS */
srand ( time(NULL) );
for(i=0;i<N;i++) {
for(j=0;j<N;j++) {
A[i][j]= (rand()%100);
B[i][j]= (rand()%100);
}
}
/* MATRIX MULTIPLICATION */
printf("Max number of threads: %i \n",omp_get_max_threads());
#pragma omp parallel
printf("Number of threads: %i \n",omp_get_num_threads());
c_1=time(NULL); // time measure: start time
#pragma omp parallel for private(k, j)
for(i=0;i<N;i++) {
for(j=0;j<N;j++) {
C[i][j]=0.; // set initial value of resulting matrix C = 0
for(k=0;k<N;k++) {
C[i][j]=C[i][j]+A[i][k]*B[k][j];
}
}
}
c_2=time(NULL); // time measure: stop time
t_mul = (float)(c_2-c_1); // Multiply time
printf("Mutiply Time: %f \n",t_1);
/* TERMINATE PROGRAM */
return 0;
}
