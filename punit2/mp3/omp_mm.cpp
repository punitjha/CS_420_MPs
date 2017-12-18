#include "main.hpp"

void omp_mm(matrix& banded, matrix& dense, matrix& out) {
        if (banded.bandwidth == -1) {
                // Fall-through case for when banded is actually dense.
                dense_mm(banded, dense, out);
                return;
        }
        #pragma omp parallel shared(banded,dense,out)
        {
         #pragma omp for collapse(2) schedule(static,2*banded.bandwidth)
        for (int i = 0; i < banded.rows; ++i) {
                for (int j = 0; j < banded.cols; ++j) {
                        double sum = 0.0;
                        int start = (i > banded.bandwidth) ? i - banded.bandwidth : 0;
                        int end = (i + banded.bandwidth < banded.rows) ? i + banded.bandwidth + 1 : banded.rows;
                        for (int k = start; k < end; ++k) {
                                sum += banded.a[i][k] * dense.a[k][j];
                        }
                        out.a[i][j] = sum;
                        }
                }
        }
}

