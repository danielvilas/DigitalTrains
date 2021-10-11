View this project on [CADLAB.io](https://cadlab.io/project/24589). 

# DigitalTrains
Digital Trains is a repository for storing and sharing my DCC/LCC setups

Up to Date this contians Circuits, boards and projects usefull for my model layout.
Each folder is a project I started. some are finished, others are Work In Progress

|Folder| Description|Status[^1]|
|:--|:--|:--|
|ArduinoDcc++|Board for use whit DCC++|Deprecated for DccBlocks
|Breaker|DC breaker board, shorts protections|Frozen, no need on DCC[^2]|
|dcc-turnout|Board to control a turnout with servo| Alive - prototype phase|
|dcc-turnout-config|Tool to configure the dcc-turnout boards| Alive - conceptual design|
|DccBlocks| Components to create a DCC system whit DCC++. Has subprojects| Stall - currently works, needs update to DCC++EX|
|docs| Different documents may be usefull| Alive - Slow|
|Esp32Lcc| Use an ESP32 as node for LCC| Stall - Reading about|
|Interfaces| Reference Designs to add conectivity| Done - until new needs|
|Kibot| Yaml Config for kibot scripts..| Done - until new needs|
|MimicPanel| Hardware and software to create Mimic Panels| WIP|
|STM32103_Devel|STM32F103 Custom board| Depecated for refenece repository|

[^1]: More info inside each project
[^2]: Let the central handle shorts :sunglasses:

## Versioning
First projects uses a folder per version system, easy to follow, easy to view older versions, but mess the file system.

Current system based on tags, and the creation of doc directories with PDFs of the schematic and the layers. Use [CadLab](https://cadlab.io/)

## Tags of projects
* __db_dt_VERSION__ -> DccBlocks/Detection
* __dt_VERSION__ -> DccTurnout
* __dt_ms_VERSION__ -> DccTurnout/Modules/ServoPmosModule
