# Raspberry Pi 
The RaspberryPi Zero has an 

## The can
/boot/config
```
dtparam=spi=on
#dtoverlay=mcp2515-can0,oscillator=8000000,interrupt=25 
dtoverlay=mcp2515-can0,oscillator=16000000,interrupt=25 
dtoverlay=spi-bcm2835-overlay
```

Test
```
sudo apt-get install can-utils
sudo ip link set can0 up type can bitrate 50000
sudo ipconfig

```
Auto Start

/etc/network/interfaces 
```
auto can0
iface can0 inet manual
    pre-up /sbin/ip link set can0 type can bitrate 500000 triple-sampling on restart-ms 100
    up /sbin/ifconfig can0 up
    down /sbin/ifconfig can0 down
```

## The hub
```
git clone https://github.com/bakerstu/openmrn

cd openmrn/applications/hub/targets/linux.x86

sudo apt install libavahi-client-dev
make
./hub -p 12024
 
```
## The tests
http://nmra2015.sbcrailway.ca/sites/default/files/clinics/Racz_OpenMRN%20hands-on%20introduction.pdf

