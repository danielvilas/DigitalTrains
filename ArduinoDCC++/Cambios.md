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
- [ ] Separar pins de Arudino, con nombre, ubicarlos donde sea más facil, Grupos de 8 por puerto y marcar nombre arduino y AVR
- [ ] Dejar solo la conexion util al motor shield
- [ ] limpiar la hoja raiz con los conectores, usar un bus
- [ ] Añadir un NeoPixel y un conector para crear bus
- [ ] Añadir conexion externa
  - [ ] Probar conexion al Ehternet Modulo ENC28J60
  - [ ] Si falla el anterior, usar HC-04 (u otro BT-serie)
  - [ ] Añadir Header correspondiente
- [ ] Cambiar el conector USB
- [ ] Añadir TestPoints
- [ ] Cambiar Circuito de Reset
- [ ] ...
### Correcciones
PDTE

## Version 0.0.3
### Mejoras
Mejoras segun plan inicial documentado en el blog.
- [ ] Crear distribucion energia desde la entrada DC Jack
  - [ ] Probar LM2596 o similar 
- [ ] Quitar FTDI-231 y sustituir por un header serie
