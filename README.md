# Solido de revolucion

Autor: Carlos Javier Martín Perdomo

Descripción: Se dispone de una pantalla dividida a la mitad. A la izquierda se indican los controles basicos. Click izquierdo a la derecha de la linea central divisioria para ir creando puntos. Tecla de enter o intro para pasar a la superficie de revolucion y tecla de retroceso para empezar una nueva figura desde cero. Una vez realizado el dibujo a la derecha y pulsada la tecla intro se vera la figura como un solido de revolucion. Adema esta figura podra moverse por la pantalla con el raton.

![error](https://github.com/CarlosJavierMartin/solidoDeRevolucion/blob/master/image.png?raw=true)

Decisiones de código:
  - Se creo una clase llamada Point que simplemente contiene las coordenadas x e y de un punto.
  - Se crearon varios metodos externos. Uno para la linea central. Otro para el historial de puntos. Y por ultimo el que muestra el solido de revolucion.
  - Como tipo de shape se ha usado TRIANGLE_STRIP.

Resultado:

![error](https://github.com/CarlosJavierMartin/solidoDeRevolucion/blob/master/sdr.gif?raw=true)

Referencias:
  - Recursos de programación:
    - https://processing.org/reference/
