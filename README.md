# Solido de revolucion

Autor: Carlos Javier Martín Perdomo

Descripción: Se dispone de una pantalla dividida a la mitad. A la izquierda se indican los controles básicos. Click izquierdo a la derecha de la linea central divisoria para ir creando puntos. Tecla de enter o intro para pasar a la superficie de revolución y tecla de retroceso para empezar una nueva figura desde cero. Una vez realizado el dibujo a la derecha y pulsada la tecla intro se vera la figura como un solido de revolución. Además esta figura podrá moverse por la pantalla con el ratón.

![error](https://github.com/CarlosJavierMartin/solidoDeRevolucion/blob/master/image.png?raw=true)

Decisiones de código:
  - Se creo una clase llamada Point que simplemente contiene las coordenadas x e y de un punto.
  - Se crearon varios metodos externos. Uno para la linea central. Otro para el historial de puntos. Y por ultimo el que muestra el solido de revolución.
  - Como tipo de shape se ha usado TRIANGLE_STRIP.

Resultado:

![error](https://github.com/CarlosJavierMartin/solidoDeRevolucion/blob/master/sdr.gif?raw=true)

Referencias:
  - Recursos de programación:
    - https://processing.org/reference/
