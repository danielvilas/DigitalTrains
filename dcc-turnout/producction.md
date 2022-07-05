# Production control list.

|number|Version|Description|issues|SWD|Servo|Status pin|Closed Led|Thrown Led|Dcc|
|-|-|:--|:--|:--|:--|:--|--|--|--|
|D2|v0.4.0|Devel board|5v connector backwards|OK|OK|OK|OK|OK|OK|
|D|v0.4.0|Devel board||OK|OK|OK|OK|OK|OK|
|1|v0.4.1|Board point 1||OK|OK|OK|OK|OK|OK|
|2|v0.4.1|Board point 2|Cfg Not fit|OK|OK|OK|OK|OK|OK|
|3|v0.4.1|Board point 3|Cfg Not fit<br>Black screw terminal|OK|OK|OK|OK|OK|OK|

## Test Description:
__SWD__ is connected and it is able to program

__Servo__ Servo moves to close and thrown position

__Status pin__ When closed is 1, when thrown is 0

__Closed Led__ When closed is on, off when trhown

__Thrown Led__ When trhown is on, off when closed 

__Dcc__ Changes on Dcc Command