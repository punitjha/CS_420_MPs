#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>
#include "papi_support.h"

double A[N][M];
double B[M][N];
double C[N][N];

// Used for testing.
double correct_results[N][N];

void basic_MM();
void basic_better_MM();
void cache_aware_MM();

// Initialize array to zeros.
void reset_array()
{
  for (int i = 0; i < N; i++)
    for (int j = 0; j < M; j++) {
        A[i][j] = 1.0;
        B[j][i] = 2.0;
    }
  memset(C, 0.0, sizeof(C));
}

void unit_test()
{
  for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
      if (abs(correct_results[i][j] - C[i][j]) > ERROR_THRESHOLD)
      {
        printf("Incorrect result. (%d, %d) %.5f %.5f\n", i, j, correct_results[i][j], C[i][j]);
        return;
      }
    }
  }
  printf("GOOD -- Test passed.\n");
}

int main (int argc, char** argv)
{
  papi_init();

  reset_array();

  printf("Running basic sequential version to save the results.\n");

  /**
   * THIS IS WHERE YOU CHOOSE WHICH COUNTERS TO RUN.
   * ONLY ADD AT MOST 2 COUNTERS PER RUN.
   *
   * The current example adds L2 Data Cache Misses and L2 Data Cache Accesses.
   */

#ifndef NOPAPI
  papi_prepare_counter(PAPI_L3_TCM);
  papi_prepare_counter(PAPI_L3_DCA);
#endif

  /** ============================================== */

  printf("Running the basic version.\n");
  papi_start();
  {
    basic_MM();
  }
  papi_stop_and_report();

  memcpy(correct_results, C, sizeof(C));

  reset_array();

  printf("Running your better basic version.\n");
  papi_start();
  {
    basic_better_MM();
  }
  papi_stop_and_report();
  unit_test();

  reset_array();

  printf("Running your cache-aware version.\n");
  papi_start();
  {
    cache_aware_MM();
  }
  papi_stop_and_report();

  unit_test();
}
