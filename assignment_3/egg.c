#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <math.h>
#include <time.h>

#define SEED     921
#define TOT_ITER 1000000000
//void saveRes(double);
int main(int argc, char* argv[])
{
  double x, y, z, pi;  
  int rank, size, provided;
  double startTime, endTime, finalTime;
  // Initialize MPI
  MPI_Init_thread(&argc,&argv, MPI_THREAD_SINGLE, &provided);
  // Fetch size and rank
  MPI_Comm_size(MPI_COMM_WORLD, &size);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  // Out main goal is to divide the workload between each process.
  // Hence each process will calculate a section of TOT_ITER
  int NUM_ITER = TOT_ITER/size;  
  // Local count is the total summation that each process will calculate,   
  // At the end of this program localCount will be summed up to totCount
  int localCount = 0;
    
  srand(SEED*rank); // Important: Multiply SEED by "rank" when you introduce MPI!
    
    // Calculate PI following a Monte Carlo method
    for (int iter = 0; iter < NUM_ITER; iter++)
    {
        // Generate random (X,Y) points
        x = (double)random() / (double)RAND_MAX;
        y = (double)random() / (double)RAND_MAX;
        z = sqrt((x*x) + (y*y));
        
        // Check if point is in unit circle
        if (z <= 1.0)
        {
            localCount++;
        }
    }
    // So far each process is calculating the localCount
    // We want to send this value to rank 0 where the totCount
    // is calculated
    startTime = MPI_Wtime();
    if (rank != 0) {
      // Send localCount to rank 0
      MPI_Send(&localCount, 1, MPI_INT, 0, 0, MPI_COMM_WORLD);
    }
    else {
      // Receive localCount
      int totCount = 0;
      //totCount += localCount; // Add the localCount of rank 0
      // A for loop is constructed to receive from every rank expect rank 0
      // Instead of specifying source i one can use MPI_ANY_SOURCE
      for (int i = 0; i < size; i++){

	totCount += localCount; // Add the localCount of rank != 0
    if (i != 0){
        	MPI_Recv(&localCount, 1, MPI_INT, i, 0, MPI_COMM_WORLD,MPI_STATUS_IGNORE);
    }
      }
      // Estimate pi
      pi = ((double) totCount / (double)TOT_ITER) * 4.0;
      endTime = MPI_Wtime();
      printf("The result is %f\n", pi);

      finalTime = endTime-startTime;
      printf("The execution time is %f \n", finalTime);
     // saveRes(finalTime);
    }

    MPI_Finalize();
    return 0;
}

