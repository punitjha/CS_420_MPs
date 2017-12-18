#include "main.hpp"

void gpu_mm(matrix& banded, matrix& dense, matrix& out) {
        double* b= banded.a[0];
        int br=banded.rows;
        int bc=banded.cols;
        int bbw=banded.bandwidth;
        double* d= dense.a[0];
        int dr=dense.rows;
        int dc=dense.cols;
        int dbw=dense.bandwidth;
        double* o= out.a[0];
        int orr=out.rows;
        int occ=out.cols;
        #pragma acc data copyin(b[0:br*bc],br,bc,bbw, d[0:dr*dc],dr,dc,dbw) copy(o[0:orr*occ],occ,orr)
        #pragma acc kernels
{
        #pragma acc parallel loop
        for (int  i = 0; i < br; ++i) {
                int start = (i > bbw) ? i - bbw : 0;
                int end = (i + bbw < br) ? i + bbw + 1 : br;
                for (int j = 0; j < bc; ++j) {
                        double sum = 0.0;
                        for (int k = start; k < end; ++k) {
                                //sum += banded.a[i][k] * dense.a[k][j];
                                sum += b[i*bc+k] * d[k*bc+j];
                        }
                        //out.a[i][j] = sum;
                        o[i*occ+j]=sum;
                        }
        }
}
}

