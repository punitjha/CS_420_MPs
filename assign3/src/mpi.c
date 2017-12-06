#include <mpi.h>

extern double A[N][M];
extern double B[M][N];
extern double C[N][N];

/**
 * The basic dense matrix multiply.
 * Use this as a stub for your other implementations.
 */
void mpi_MM()
{
    int numprocs;  //This is the number of processes in the group.
    int procid;    //This is the process identifier
    int source;    //This is the ID of the message source
    int numworkers; // This is the number of processors
    int dest;      //This is the ID of the message destination
    int rows;      //This is the rows to be sent
    int averow;    //This is the the aver no. of rows that are sent
    int extra;     //this is the number of left over rows after calculating the average
    int offset;    //This is the shift in the row indexes
    int i, j, k, rc;

    MPI_Comm_rank(MPI_COMM_WORLD,&procid);
    MPI_Comm_size(MPI_COMM_WORLD,&numprocs);

//********************************************************************************
//    if (numprocs<2)
//    {
//	for (i = 0; i < N; ++i) {
//        for (j = 0; j < N; ++j) {
//            C[i][j] = 0;
//            for (k = 0; k < N; ++k) {
//                C[i][j] += A[i][k] * B[k][j];
//            }
//        }
//    }
//    }
//


//*************************************************************************************
    if (procid ==0) // If its a master process
    {
     numworkers=numprocs-1;
//sending the data to worker tasks starts here
     averow = N/numworkers;
     extra = N%numworkers;
     offset=0;
     for (dest =1; dest<=numworkers; dest++)
     {
      rows = (dest <= extra ) ? averow+1: averow;
      MPI_Send(&offset,1,MPI_INT,dest,0,MPI_COMM_WORLD);
      MPI_Send(&rows,1,MPI_INT,dest,0,MPI_COMM_WORLD);
      offset=offset+rows;
     }

//receiving reuslts form worker processes
    for(source=1;source<=numworkers;source++)
    {
     MPI_Recv(&offset,1,MPI_INT,source,0,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
     MPI_Recv(&rows,1,MPI_INT,source,0,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
     MPI_Recv(&C[offset][0],rows*N,MPI_DOUBLE,source,0,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
     }
     } // the if statement ends here

//**********************************the if statements for workers start here********************
    else{
     MPI_Recv(&offset,1,MPI_INT,0,0,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
     MPI_Recv(&rows,1,MPI_INT,0,0,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
     for (i = 0; i < rows; ++i) {
        for (j = 0; j < N; ++j) {
            C[i][j] = 0;
            for (k = 0; k < N; ++k) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
    MPI_Send(&offset, 1, MPI_INT, 0, 0, MPI_COMM_WORLD);
    MPI_Send(&rows, 1, MPI_INT, 0, 0, MPI_COMM_WORLD);
    MPI_Send(&C, rows*N, MPI_DOUBLE,0,0, MPI_COMM_WORLD);
    }
}
