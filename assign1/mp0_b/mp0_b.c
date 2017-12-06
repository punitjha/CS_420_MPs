#include "timers.h"

#include <stdio.h>
#include <stdlib.h>

void test1();
void test2();
void test3();
void test4();
void test5();

int main(int argc, char **argv)
{
    test1();
    test2();
    test3();
    test4();
    test5();
    return 0;
}

void test1()
{
    double total_time= 0;
    int t, i;

    for(t=0; t<10; t++) {
        double t1 = get_clock();

        int a = 2, a2 = 1;
        for(i=0;i<1000000;i++)
            a2 = a*a;

        double t2 = get_clock();
        total_time += (t2-t1);
    }

    double time_taken = total_time/10;

    printf("time taken for test1 = %7.16f\n", time_taken);
}

void test2()
{
    int *A = (int *)malloc(1000000*sizeof(int));
    int *B = (int *)malloc(1000000*sizeof(int));
    int *C = (int *)malloc(1000000*sizeof(int));

    int t, i;

    for(i=0; i<1000000; i++) {
        A[i] = rand()%100000;
        B[i] = rand()%100000;
    }

    double total_time = 0;

    for(t=0; t<10; t++) {

        double t1 = get_clock();

        for(i=0;i<1000000;i++)
            C[i] = A[i]+B[i];

        double t2 = get_clock();
        total_time += (t2-t1);
    }

    double time_taken = total_time/10;

    free(A);
    free(B);
    free(C);

    printf("time taken for test2 = %7.16f\n",time_taken);
}

void test3()
{
    int *A = (int *)malloc(1024*1024*sizeof(int));

    double total_time = 0;

    int t, j, i;
    for(t=0; t<10; t++) {
        double t1 = get_clock();

        for(j=0; j<1024; j++)
            for(i=0; i<1024; i++)
                A[i*1024+j] = 1000;

        double t2 = get_clock();
        total_time += (t2-t1);
    }

    double time_taken = total_time/10;

    free(A);

    printf("time taken for test3 = %7.16f\n",time_taken);
}

void test4()
{
    int *A = (int *)malloc(1024*1024*sizeof(int));
    int *B = (int *)malloc(1024*1024*sizeof(int));

    double total_time = 0;

    int t, i, j;
    for(i=0; i<1024; i++)
        for(j=0; j<1024; j++)
            A[i*1024+j] = rand()%1000;

    for (t=0; t<10; t++) {
        double t1 = get_clock();

        for(i=0; i<1024; i++)
            for(j=0; j<1024; j++)
                B[j*1024+i] = A[i*1024+j];

        double t2 = get_clock();
        total_time += (t2-t1);
    }

    double time_taken = total_time/10;

    free(A);
    free(B);

    printf("time taken for test4 = %7.16f\n",time_taken);
}

void test5()
{
    int *A = (int *)malloc(10000*sizeof(int));

    double total_time = 0;

    int t, i;
    for(t=0; t<10; t++) {
        double t1 = get_clock();

        for(i=0; i<10000; i++)
            A[i] = 25;

        for(i=0; i<10000; i++)
            A[i] *= 2;

        double t2 = get_clock();
        total_time += (t2-t1);
    }

    double time_taken = total_time/10;

    printf("time taken for test5 = %7.16f\n",time_taken);

    free(A);
}
