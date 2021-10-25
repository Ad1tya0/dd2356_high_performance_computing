#include"stdio.h"
#include"omp.h"

void main()
{
    //while(1)
    //{
    omp_set_num_threads(12);
    #pragma omp parallel
    {
        int id = omp_get_thread_num();
        printf("hello from thread %d\n" , id);
    }   
  //  }
}