# DigitalTrains
Digital Trains is a repository for storing and sharing my DCC/LCC setups

Up to Date this contians Circuits, boards and projects usefull for my model layout.
Each folder is a project I started. some are finished, others are Work In Progress

|Folder| Description|Status[^1]|
|:--|:--|:--|
|[ArduinoDCC++](ArduinoDCC++)|Board for use whit DCC++|Deprecated for DccBlocks
|[Breaker](Breaker)|DC breaker board, shorts protections|Frozen, no need on DCC[^2]|
|[dcc-turnout](dcc-turnout)|Board to control a turnout with servo| Alive - prototype phase|
|[dcc-turnout-config](dcc-turnout-config)|Tool to configure the dcc-turnout boards| Alive - conceptual design|
|[DccBlocks](DccBlocks)| Components to create a DCC system whit DCC++. Has subprojects| Stall - currently works, needs update to DCC++EX|
|[docs](docs)| Different documents may be usefull| Alive - Slow|
|[Esp32Lcc](Esp32Lcc)| Use an ESP32 as node for LCC| Stall - Reading about|
|[Interfaces](Interfaces)| Reference Designs to add conectivity| Done - until new needs|
|[kibot](kibot)| Yaml Config for kibot scripts..| Done - until new needs|
|[Libs](Libs)| KiCad Libraries| WIP |
|[MimicPanel](MimicPanel)| Hardware and software to create Mimic Panels| WIP|
|[pcbdraw](pcbdraw)| PcbDraw Library| WIP|
|[STM32103_Devel](STM32103_Devel)|STM32F103 Custom board| Depecated for refenece repository|

[^1]: More info inside each project
[^2]: Let the central handle shorts :sunglasses:

## Versioning
First projects uses a folder per version system, easy to follow, easy to view older versions, but mess the file system.

Current system based on tags, and the creation of doc directories with PDFs of the schematic and the layers.
## Tags of projects
* __db_dt_VERSION__ -> DccBlocks/Detection
* __dt_VERSION__ -> DccTurnout
* __dt_ms_VERSION__ -> DccTurnout/Modules/ServoPmosModule
* __db_abc_stop_VERSION__ -> DccBlocks/ABC/AbcStop
* __db_pd_VERSION__ ->  DccBlocks/DccPowerDistribution
* __i_lb_esp32_VERSION__ -> Interfaces/LocoBufferEsp32/board/LocoBufferEsp32
* __i_lb_esp32_c_VERSION__ -> Interfaces/LocoBufferEsp32/board/LocoBufferEsp32Craddle
