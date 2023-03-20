# Solución de ecuaciones diferenciales parciales a través del método de Adomian

La forma en que esta codificado este código es mediante dos live functions, en otras palabras, mediante 3 archivos diferentes, esto a que el live escritor de Matlab así maneja las funciones. A continuacion explicaré que es cada archivo

## adomian.mlx
Este archivo es la códificación del polinomio de Adomian, para este ejercicio es el polinomio de Adomian del tipo $u u_{x}$, el cual se expresa como
$$ u u_{x} = A_n = \sum_i^n u_i u_{n-i,x} $$

## recurrencia.mlx
El método de Adomian es un método recursivo, en este scrip esta codificado la recursividad para el ejercicio de ejemplo, la cual es
$$ u_{n+1} = (1+h) \int_0^t \frac{\partial u_n}{\partial t} dt + h \int_0^t A_n dt $$
A esta ecuación se llega realizando los calculos correspondientes a mano. La h es el parametro de convergencia.

## Como ejecutar el comando

- Descargar los tres scrips juntos y descomprimir en una misma carpeta
- Abrir matlab
- En la barra de direcciones de Matlab, buscar el icono para seleccionar carpeta, una vez encontrado buscar la carpeta en donde se encuentran los 3 scrips.
- Abrir recurrencia.mlx y ejecutar.

### Creado por dionicio-alberto
