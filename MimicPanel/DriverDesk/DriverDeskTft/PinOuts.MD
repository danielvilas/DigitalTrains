# Pinouts 
Pins Necesarios para la pantalla TFT

* SWD: 3 P + Reset
* I2C: 2 P
* UART: 2 P
* TFT: 6P
* BTN: 10P
* Status Led: 1
* Total: 24

## STMF103CB
PA_00 * 
PA_01 * -> RENC_A
PA_02 * -> RENC_B
PA_03 * -> RENC_S
PA_04 * -> TFT_DC
PA_05 SPI1_SCK -> TFT_CLK
PA_06 SPI1_MISO -> No Usable
PA_07 SPI1_MOSI -> TFT_DIN
PA_08 * -> TFT_DC
PA_09 * -> TFT_RST
PA_10 * -> TFT_BL
PA_11 * (USB-) -> USB_DN
PA_12 * (USB+) -> USB_DP
PA_13 SWD_IO
PA_14 SWD_CLK
PA_15 * -> TF_CS

PB_00 * -> BTN_5 
PB_01 * -> BTN_4
PB_02 (BOOT1)
PB_03 (SWO)
PB_04 * -> INT_PIN
PB_05 * -> PIN_LED
PB_06 I2C1_SCL
PB_07 I2C_SDA
PB_08 * -> BTN_3
PB_09 * -> BTN_2
PB_10 * -> BTN_1
PB_11 * -> BTN_6
PB_12 * -> BTN_7
PB_13 * -> BTN_8
PB_14 * -> BTN_9
PB_15 * -> BTN_10