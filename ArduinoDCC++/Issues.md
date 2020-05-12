# Problemas
Listado de problemas encontrados. En esta pagina sera un apartado por version, y luego sub apartados por problemas. En cada problema listado, primer nivel las posibles causa, segundo nivel medios de comprobacion, tercer nivel, resultado y/o comentarios. La soluciones tambien en segundo nivel.


## v0.0.1
La version enviada a crear las pcbs tiene los siguientes problemas

### __0.0.1-1 Problema__: Avr-Dude no puede detectar el chip.
Al intentar Grabar el BootLoader de Arduino, AVR_DUDE no detecta el chip
* [x] __Causa Real__: USBAsp no Auto-reconoce la velocidad para un chip virgen
  * Los Fuses por defecto estan para usar el Reloj interno dividido por 8, por lo que va a 1 MHz, la opcion por defecto del AvrDude no lo reconce
  * Es mejor usar avrdudess para flasear los Fuses y el bootloader.
  * __Solucion__: Flashear a baja Velocidad
    * `./bin/avrdude -Cetc/avrdude.conf -v -patmega328pb -cusbasp -Pusb -e -Ulock:w:0x3F:m -Uefuse:w:0xFD:m -Uhfuse:w:0xDE:m -Ulfuse:w:0xFF:m -B10` (desde `[arduino]/hardware/tools/avr/`)
    * flash `[arduino]/hardware/arduino/avr/bootloaders/optiboot/optiboot_atmega328.hex`

* [x] __Posible Causa__: Mala soldadura
  * [ ] Descartar el resto
  * [x] Revisar impedancias con gnd 
    * miso y mosi sin conexion
  * [x] Revisar pines header con Patas (arriba)
    * Mala conexion entre MISO/MOSI/SCK con el Header 
  * [x] Soldar con Solder Paste y HotAir
  * [ ] Soldar con Stencil y HotAir
    * [x] Pedir Stencil
  * [x] Mandar fabricar con PCBA
    * [x] ~~Diseñar para usar CH-340 y otros basicos~~
* ~~__Posible Causa__: Arduino fuerza usar otro chip (ATMega328 no PB)~~ __Descartada__ 
  * En realidad el comando grabar Bootloader desde arduino solo reconoce los ATMega328P. Pero una vez grabado el bootloader con Avrdude funciona
  * [x] Probar commando en CLI solo deteccion.
* ~~__Posible Causa__: Parche DCC++ impide deteccion~~ __Descartada__ 
  * [x] Verificar Parche en Arduino Uno
* ~~__Posible Causa__: Pines ICSP Incorrectos~~ __Descartada__ 
  * [x] Revisar pin-out en esquematico
    * Aparentemente es correcto, en DS MISO,MOSI y SCK estan bien. En AppNote el conector es el mismo
  * [x] Comparar posiciones con salidas Arduino
  * [x] Revisar pines en PCB
* [x] ~~__Posible Causa__: Reloj Mal puesto~~ __Descartada__
  * En principio avrdude no impacta esto. Si impacta el FUSE del reloj
  * [x] Soldar con Stencil/Pasta y si se ve bien, antes de poner el cristal probar.
* [x] ~~__Posible Causa__: Diseño Incorrecto~~ __Descartada__
  * [x] Revisar Pines con DS
    * Segun el DS es correcto, 
  * [x] Revisar Pin Mapping en FootPrint
  * [x] Comparar funciones con Arduino
  * [x] Buscar diseños Similares y comparar
  * [x] Probar un ATMega238PB break Out 

Pasos a realizar
1. [X] revisar pin-out
2. [x] revisar pines con DS
3. [x] revisar pines PCB
4. [x] Comparar pines ICSP - Headers con arduino Uno
5. [x] Probar AvrDude cli
6. [x] Probar AvrDude Parche
7. [x] Diseñar ATMega238Ob BreakOut y pedirlo
  * Revisar si ya existe en easy-eda y modificarlo para usar mi cristal
8. Buscar y revisar diseños con ATMega238PB-AU y actualizar
9. [x] Rediseñar 0.0.1c-j para usar componentes basic y ~~ch340~~
10. [x] Pedir 0.0.1c, 0.0.1c-j y breakout
11. [x] probar SolderPaste (intentar recuperar algun chip)
12. [ ] Probar los fabricados

### __0.0.1-2 Problema__: Conector USB micro-B.
Al intentar probar la parte USB-FTDI, el Conector USB no suelda bien, muchos cortos (entre VCC y GND) y salta enseguida. Aplica a las revisiones b, c y c-j.

* __Causa Real__: El footprint es para 10103594 pero yo compre 10118193 por lo que no encaja por decimas de milimetro.
  * [ ] ~~__Posible Solucion__: Romper un cable USB y soldar los cables con cuidado direcamente a las resistencias~~ __Descartado__.
    * Esto me serviria para probar unicamente la parte USB-FTDI, pero no como solucion definitiva
  * [x] __Posible Solucion__: Comprar el 10103594
  * [] __Posible Solucion__: Cambiar el FootPrint __No Viable__
    * Implica pedir nuevas placas, (+€, esperar,...)
    * No tiene sentido hacer y pedir una 0.0.1d
    * Puede ser viable para la 0.0.2
    * Buscar opciones en micro-B, mini-B y B, de agujero pasante preferiblemente. Facil de soldar, GND separado de los pines y pines separados.
      * B: MC32596 0.5 (Comprobar FootPrint en papel)
      * mini B Pasante: 2172034-1 (TE, SnapEda) 0,5 
      * mini B Facil Soldar: 	2486 01 (Lumber, kicad) 2.4, 65100516121 (Wurht, kicad) 1,1
      * micro B Pasante: 614105150721 (Wurth, Kicad) Vertical 1.7, USB3131-30-0230-A (CGT, SnapEda), Vertical 0.8
      * micro B Facil Soldar: 629105150521 (Wurth, kicad), 1,8 o 105017-0001 (Molex, Kicad) 0.8
    

### __0.0.1-3 Problema__: VSS es facil puentearlo.
Al probar el multimetro para verificar las cosas es facil puentear algun input/vcc por lo que frie el AtMega328.

Esto no es facil solucionarlo, al final las patas estan expuestas en el chip, la unica solucion real es tener cuidado con el multimetro y solo usarlo para revisar cortos Antes de poner energia. En este apartado pondre posibles soluciones checkeables si las realizo al final.
* __Posible Solucion__: Tener Cuidado con el polimetro
  * Esto es para siempre, por lo que lo dejo sin check
* [ ] __Posible Solucion__: Comprar un Multimetro mejor (puntas finas, con sonido,...)
* [ ] __Posible Solucion__: poner TestPoints donde sea necesario.
  * Poner un header para GND
* [ ] __Posible Solucion__: Optoclopar todas las señales
  * Tiene que ser un optoclopado rapido
  * Implica tener dos lineas de VCC
  * Poner en un sitio facil de cambiar, o usar DIP con riser