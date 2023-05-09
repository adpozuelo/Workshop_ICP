# Antonio Díaz Pozuelo - adpozuelo@gmail.com
# Introducción a la computación paralela
import random

circle_points = 0
square_points = 1073741824

for i in range(square_points):
    rand_x = float(random.uniform(-1, 1))
    rand_y = float(random.uniform(-1, 1))

    origin_dist = rand_x * rand_x + rand_y * rand_y

    if origin_dist <= 1.0:
        circle_points += 1

pi = float(4 * circle_points) / float(square_points)
print("Pi ~=", pi)
