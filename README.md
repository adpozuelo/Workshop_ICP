# Workshop: Introducción a la computación paralela

## Introducción a la computación paralela

El objetivo de este Workshop es mostrar los principos básicos de la computación paralela: arquitectura, diseño, librerías de paralelización, eficiencia/speedup, escalado, eficiencia energética, generadores de números aleatorios, zonas críticas de memoria, sincronización entre hilos, etc. Para cumplir este objetivo, se implementará un método de Monte Carlo para estimar el número Pi. A lo largo del Workshop se trabajará con los lenguajes de programación Python, C y Fortran; así como con las librerías de paralelización OpenMP, Fortran SP y NVIDIA CUDA. Finalmente, se realizará un análisis de rendimiento para establecer un debate sobre los distintos diseños y las librerias y lenguajes de programación utilizados.

## Requisitos

- [ ] [Python](https://www.python.org/)
- [ ] [gcc/gfortran (GNU)](https://gcc.gnu.org/)
- [ ] [OpenMP](https://www.openmp.org/) 
- [ ] [NVIDIA HPC SDK](https://developer.nvidia.com/hpc-sdk)

## Compilado y ejecución

Compilado:

```
git clone https://github.com/adpozuelo/Workshop_ICP.git
cd Workshop_ICP
make
```

Ejecución:

```
Ejemplos dentro de mc_pi.pdf
```