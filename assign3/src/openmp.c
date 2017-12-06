extern double A[N][M];
extern double B[M][N];
extern double C[N][N];

/**
 * The basic dense matrix multiply.
 * Use this as a stub for your other implementations.
 */
void openMP_MM()
{
    int i, j, k;
    #pragma omp parallel shared(A,B,C) private(i,j,k)
    {
    #pragma omp for schedule(static)
    for (i = 0; i < N; ++i) {
        for (j = 0; j < N; ++j) {
            C[i][j] = 0;
            for (k = 0; k < M; ++k) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
    }
}
