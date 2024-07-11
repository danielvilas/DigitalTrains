# Pinouts 
Pins Necesarios para la pantalla TFT

* SWD: 3 P + Reset
* I2C: 2 P
* UART: 2 P
* TFT: 6P
* BTN: 10P
* Status Led: 1
* Total: 24

## STMF030K6T6
Va justo clavado 6P para botones (Botones multiplexados)
PA_00 * -> TFT_RST
PA_01 * -> TFT_CS
PA_02 UART TX
PA_03 UART RX
PA_04 * -> TFT_DC
PA_05 SPI1_SCK -> TFT_CLK
PA_06 SPI1_MISO -> No Usable
PA_07 SPI1_MOSI -> TFT_DIN
PA_08 * -> TFT_DC
PA_09 * (I2C1_SCL)
PA_10 * (I2C1_SDA)
PA_11 * (I2C INT)
PA_12 * -> TFT_BL
PA_13 SWD_IO
PA_14 SWD_CLK
PA_15 *
PB_00 *
PB_01 *
PB_02 ############
PB_03 SWD_SWO
PB_04 *
PB_05 Status_LED
PB_06 * 
PB_07 *