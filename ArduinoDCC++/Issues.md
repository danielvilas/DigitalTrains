# Problemas
Listado de problemas encontrados. En esta pagina sera un apartado por version, y luego sub apartados por problemas. En cada problema listado, primer nivel las posibles causa, segundo nivel medios de comprobacion, tercer nivel, resultado y/o comentarios. La soluciones tambien en segundo nivel.


## v0.0.1b
La version enviada a crear las pcbs tiene los siguientes problemas

### __0.0.1b-1 Problema__: Avr-Due no puede detectar el chip.
Al intentar Grabar el BootLoader de Arduino, AVR_DUE no detecta el chip
* [ ] __Posible Causa__: Mala soldadura
  * [ ] Descartar el resto
  * [ ] Soldar con Solder Paste y HotAir
    * PDTE: recibir
    * Solo me quedan dos ATMega238PB-AU
  * [ ] Soldar con Stencil y HotAir
    * [ ] Pedir Stencil
    * Solo me quedan dos ATMega238PB-AU
  * [ ] Mandar fabricar con PCBA
    * [ ] Diseñar para usar CH-340 y otros basicos
* [ ] __Posible Causa__: Arduino fuerza usar otro chip (ATMega328 no PB)
  * [ ] Probar commando en CLI solo deteccion.
* [ ] __Posible Causa__: Parche DCC++ impide deteccion
  * [ ] Verificar Parche en Arduino Uno
* [ ] __Posible Causa__: Pines ICSP Incorrectos
  * [x] Revisar pin-out en esquematico
    * Aparentemente es correcto, en DS MISO,MOSI y SCK estan bien. En AppNote el conector es el mismo
  * [ ] Comparar posiciones con salidas Arduino
  * [] Revisar pines en PCB
* [ ] __Posible Causa__: Reloj Mal puesto
  * En principio avrdue no impacta esto
  * [ ] Soldar con Stencil/Pasta y si se ve bien, antes de poner el cristal probar.
* [ ] __Posible Causa__: Diseño Incorrecto
  * [x] Revisar Pines con DS
    * Segun el DS es correcto, 
  * [x] Revisar Pin Mapping en FootPrint
  * [ ] Comparar funciones con Arduino
  * [ ] Buscar diseños Similares y comparar
  * [ ] Probar un ATMega238PB break Out 

PAsos a realizar
1. [X] revisar pin-out
2. [x] revisar pines con DS
3. [x] revisar pines PCB
4. [ ] Comparar pines ICSP - Headers con arduino Uno
5. [ ] Probar AvrDue cli
6. [ ] Probar AvrDue Parche
7. [ ] Diseñar ATMega238Ob BreakOut y pedirlo
  * Revisar si ya existe en easy-eda y modificarlo para usar mi cristal
8. Buscar y revisar diseños con ATMega238PB-AU y actualizar
9. [ ] Rediseñar 0.0.1c-j para usar componentes basic y ch340
10. [ ] Pedir 0.0.1c, 0.0.1c-j y breakout
11. [ ] probar SolderPaste (intentar recuperar algun chip)
12. [ ] Probar los fabricados