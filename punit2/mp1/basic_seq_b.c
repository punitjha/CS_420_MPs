extern double A[N][M];
extern double B[M][N];
extern double C[N][N];

/**
 * The better dense matrix multiply.
 * Implement an improvement of the first version without tiling.
 */
void basic_better_MM()
{ 
    int i, j, k;
    for (i = 0; i < N; ++i) {
        for (j = 0; j < N; ++j) {
	    double temp=0;
            for (k = 0; k < M; ++k) {
	         temp+=A[i][k]*B[k][j];
            }
	    C[i][j]=temp;
        }
    }
}
