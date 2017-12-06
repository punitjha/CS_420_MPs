// to compile this program rum g++  project_2.cpp -01 -larmadillo llapack -lblas  -Wall 
// the -Wall attribute is used to show all the errors you may possible get in your score code
#include <armadillo> // the Armadillo linear algebra package of c++
#include <iostream>
#include <fstream>
#include <math.h>
#include <string>
#include <cmath>
#include <complex> //for using complex numbers in the program
using namespace std;
int main()
{
//multiplication using the armadillo package
	arma::mat A(6,6,arma::fill::randu);
	arma::mat B(6,6,arma::fill::randu);
	A.print("\n");
	B.print("\n");
	arma::mat C1=A*B;
	C1.print("This is the correct answer\n");

//manual multiplication
	arma::mat C=arma::zeros(A.n_rows,B.n_cols);
	int i, j, k;
    	for (i = 0; i < A.n_rows; ++i) 
	{
		  for (j = 0; j < B.n_cols; ++j) 
		  {
			C(i,j) = 0;
			for (k = 0; k < B.n_rows; ++k) 
			{
			     C(i,j) += A(i,k) * B(k,j);
			}
		  }
	}
	C.print("\n Manual simple multiplication \n");
//multiplication using a temprorary variables
	arma::mat C_temp=arma::zeros(A.n_rows,B.n_cols);
    	for (i = 0; i < A.n_rows; ++i) 
	{
		  for (j = 0; j < B.n_cols; ++j) 
		  {
			double temp = 0;
			for (k = 0; k < B.n_rows; ++k) 
			{
			    	temp+= A(i,k) * B(k,j);
			}
			C_temp(i,j)=temp;
		  }
	 }
	C_temp.print("\n Manual simple multiplication using temp \n");
//We begin tiling of the matrix B  only here 
// N = T*n where T is the tile size and 
	int n=2;
	int T=3;
//the tiling is declared above
	arma::mat C_aT=arma::zeros(A.n_rows,B.n_cols);
	for (int kk=0; kk <n; kk++)
	{
		for (i=0; i<A.n_rows; ++i)
		{
			for (j=0; j<B.n_rows; ++j)
			{
				for ( k= kk*T; k<(kk+1)*T; k++)
				{
					C_aT(i,j)+=A(i,k)*B(k,j);
				}
			}
		}
	}
	C_aT.print("This is when B is tiled");



//Here we tile both A and B matrices

	arma::mat C_abT=arma::zeros(A.n_rows, B.n_cols);
	for ( int jj=0; jj<n; jj++ )
	{
		for (int kk =0; kk<n; kk++)
		{
			for (i =0; i<A.n_rows; i++)
			{
				for (j=jj*T; j<(jj+1)*T; j++)
				{
					for (k=kk*T; k<(kk+1)*T; k++)
					{
						C_abT(i,j)+=A(i,k)*B(k,j);
					}
				}
			}
		}
	}
	C_abT.print("This is when both A and B are tiled");
//Starting to tile in all the dimensions -- A,B and C 

	arma::mat C_abcT=arma::zeros(A.n_rows, B.n_cols);
	for (int ii=0; ii<n; ii++)
	{
		for (int jj=0; jj<n ; jj++)
		{
			for (int kk=0; kk<n ; kk++)
			{
				for (i=ii*T; i<(ii+1)*T; i++)
				{
					for (j=jj*T; j<(jj+1)*T; j++)
					{
						for(k=kk*T; k<(kk+1)*T; k++)
						{
							C_abcT(i,j)+=A(i,k)*B(k,j);
						}
					}
				}
			}
		}
	}
	C_abcT.print("This is when both A,B and C are tiled");






	
}
