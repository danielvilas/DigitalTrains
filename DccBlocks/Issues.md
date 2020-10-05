# Problemas
Listado de problemas encontrados. En esta pagina sera un apartado por Componente, y luego sub apartados por problemas. En cada problema listado, primer nivel las posibles causa, segundo nivel medios de comprobacion, tercer nivel, resultado y/o comentarios. La soluciones tambien en segundo nivel.


## DccBlocks
Este componente representa a todos los componentes, cuando un problema afecta al sistema propiamente dicho.

### __DccBlocks-1 Problema__: Señales incompatibles con modelo de CommandStation-EX.
Al actualizar a la version EX(con desarrollo vio). Han aparecido varios tipos de motorDrivers nuevos que tienen más señales.
* [ ] Señal Fault
* [ ] Signal 2 (usada solo para una placa KickStarter) conviene incluirla
* [ ] Sacar 5V (logic VCC) y GND

## Boost Module L298P
Componente Boost basado en el Motor shield y el H-Bridge L298P
### __BL298P-1 v0.0.1 Problema__: No se identifican las salidas con las entradas.
* [ ] En el silk no hay referencia para saber cual es la salida correspondiente a cada entrada.
### __BL298P-2 v0.0.1 Problema__: Falta de potencia.
El chip L298P solo tiene soporte para 2A por canal y se calienta mucho.
* [ ] Revisar MC33926
* [ ] Revisar Otros encapsulados
* [ ] Revisar otros Motor shield en Ali-Express
 
## DccModule
Componente con el motor CommandStation-EX (atmega238pb)
### __DccMod238-1 Problema__: Version 0.0.1 es de prueba.
Esta primera version ha sido de prueba y tiene los siguientes problemas:
* [ ] En el Front esta mal el silk de los conectores Boost.
* [ ] Hay que actualizar los pines para añadir signal2 y fail.
* [ ] Remodelar para fabicar en JLCPCB
  * [ ] Cambiar tamaños
  * [ ] añadir reloj como STM32_Devel
* [ ] el PCB no es coherente con Boost
* [ ] Falta entrada de 5v y GND ¿Que conector?
* [ ] Modificar para romper y añadir conectores