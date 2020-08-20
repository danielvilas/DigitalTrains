# Listado de Cambios
En este documento registro los cambios que debo ir haciendo segun he visto posibles problemas, o errores.

## Version 0.0.1
### Correcciones
Cosas a Corregir en la version 0.0.1 antes de empezar con la 0.0.2

- [x] Fuse, cambiar FootPrint
- [x] Añadir MountHoles
- [x] Añadir descripcion de los pines
- [x] Reducir Tamaño PCB
- [x] Añadir zona de Pines con 5V y GND
- [x] Revisar Compra Condesador 10uF 35V (es de 1uF 35V)
- [x] Revisar PushBtn
- [x] Revisar Conexiones Jack

## Version 0.0.2
### Mejoras
Cosas que hay quiero poner en la 0.0.2
- [ ] Tener preparado un PCB modulo, Lector DCC (aprovechar Gastos de envio) con PCBA para probar tambien
- [x] Separar pins de Arduino, con nombre, ubicarlos donde sea más facil, Grupos de 8 por puerto y marcar nombre arduino y AVR
- [x] Cambios en Documento Impreso
  - Quedan algunos que no hare para 0.0.2
- [x] Dejar solo la conexion util al motor shield
- [X] limpiar la hoja raiz con los conectores, usar un bus
- [x] Añadir tres NeoPixel y un conector para crear bus
- [x] Añadir señal Run (led + pin) y de error (led + pin)
- [X] Corregir señal de reset, poner npn como opcion.
- [X] Añadir conexion externa
  - Esto no veo que vaya a ser posible, y requiera otra MCU para gestionar las conexiones de RED, en ese caso poner conector IDC.
  - [ ] Probar conexion al Ehternet Modulo ENC28J60
  - [ ] Si falla el anterior, usar HC-04 (u otro BT-serie)
  - [ ] Añadir Header correspondiente
- [x] Cambiar el conector USB
  - Poner los tres (el actual, y los dos "faciles" de soldar)
- [ ] Añadir TestPoints
- [x] Revisar Designadores en PCB
- [x] Cambiar Values de los Leds
- [ ] ...
### Correcciones
PDTE

## Version 0.0.3
Cancelada - A partir de ahora ire por modulos, para abaratar costes...
### Mejoras
Mejoras segun plan inicial documentado en el blog.
- [ ] Crear distribucion energia desde la entrada DC Jack
  - [ ] Probar LM2596 o similar 
- [ ] Quitar FTDI-231 y sustituir por un header serie
- [ ] Añadir trazas diferenciales para USB y Serial
- [ ] Hacer las trazas USB y Serial de la misma longitud
