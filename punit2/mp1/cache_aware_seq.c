extern double A[N][M];
extern double B[M][N];
extern double C[N][N];

/**
 * Implement cache-aware matrix multiply.
 */
void cache_aware_MM()
{
	int i,j,k,ii,jj,kk;
	int n=20;
	int T=150;
    // -- 
    // Implement your code here
    // -- 

	for ( ii=0; ii<n; ii++)
	{
		for ( jj=0; jj<n ; jj++)
		{
			for ( kk=0; kk<n ; kk++)
			{
				for (i=ii*T; i<(ii+1)*T; i++)
				{
					for (j=jj*T; j<(jj+1)*T; j++)
					{
						double temp=C[i][j];
						for(k=kk*T; k<(kk+1)*T; k++)
						{
							temp+=A[i][k]*B[k][j];
						}
						C[i][j]=temp;
					}
				}
			}
		}
	}
}
