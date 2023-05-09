// Antonio Díaz Pozuelo - adpozuelo@gmail.com
// Introducción a la computación paralela
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <omp.h>

int main()
{
    int i;
    int circle_points = 0;
    int square_points = 1073741824;
    float rand_x, rand_y, origin_dist, pi;
    unsigned int seed;

#pragma omp parallel
    seed = ((unsigned)time(NULL) & 0xFFFFFFF0) \
             | (omp_get_thread_num() + 1);
    srand(seed);

#pragma omp parallel for \
firstprivate(rand_x, rand_y, origin_dist, seed)
    for (i = 0; i < square_points; i++)
    {
        rand_x = ((float)rand_r(&seed) / (RAND_MAX)) * 2 - 1;
        rand_y = ((float)rand_r(&seed) / (RAND_MAX)) * 2 - 1;

        origin_dist = rand_x * rand_x + rand_y * rand_y;

        if (origin_dist <= 1.0)
#pragma omp atomic
            circle_points++;
    }
    pi = (4 * (float)circle_points) / square_points;
    printf("Pi ~= %f\n", pi);
    return 0;
}
