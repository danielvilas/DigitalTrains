# Production control list.

|number|Description|version|issues|Dc|Dcc|Dc + Dcc|Decoder|
|-|-|:--|:--|:--|:--|:--|--|
|D1|v0.2.0|Devel board| |OK|OK|OK|OK|
|0|v0.3.0|Devel board| |OK|OK|OK|OK|
|1|v0.3.0|Board point 1||OK|OK|OK||
|2|v0.3.0|Devel board|2N7002 -> NXV55UNR|OK|OK|OK||
|3|v0.3.0|Board point 3|2N7002 -> NXV55UNR|OK|OK|OK|OK|
|4|v1.0.0-RC2|Board point 2||OK|OK|OK|OK|
|D2|v1.0.0-RC2|Devel board|Led Cambiado|OK|OK|OK|OK|
|D3|v1.0.0-RC2|Devel board|D13 y D8 Camibados a viejo <br> D1 como D3 Viejo <br> Q4 es un IRLM|OK|OK||OK|
|D4|v1.0.0-RC3|Devel board|D13 cambiado a viejo<br> Q4 es un IRLM|OK|OK||OK|



## Test Description:
__DC__ is only with DC plug adapator should measure:
* VDrive: 11.64 aprox
* 5v: 4.96
* 3.3v: 3.31
* TP1 Q4 pin 1: 11.02 (Pchanel Closed)

__Dcc__ is only with Piko SmartControl Light (may make sound) and measure:
* VDrive: 14 aprox
* 5v: 4.96
* 3.3v: 3.31
* TP1 Q4 pin 1: 7 (Pchanel Open)

__Dc + Dcc__ is with both Plug and Piko central, no sound and measeure:
* VDrive: 11.64 aprox
* 5v: 4.96
* 3.3v: 3.31
* TP1 Q4 pin 1: 14.6 (Pchanel Closed)

__Decoder__ is the Dcc interface works.
