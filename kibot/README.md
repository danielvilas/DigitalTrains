# Kibot Scripts
This folder contains the kibot scripts in order to document the projects. So, all projects have the same documentation.


## Install

```
sudo apt install xvfb recordmydesktop xdotool librsvg2-bin imagemagick xclip
curl -OL https://github.com/INTI-CMNB/InteractiveHtmlBom/releases/download/v2.5.0/interactivehtmlbom.inti-cmnb_2.5.0-1_all.deb
sudo apt install ./interactivehtmlbom.inti-cmnb_2.5.0-1_all.deb
rm ./interactivehtmlbom.inti-cmnb_2.5.0-1_all.deb

#pip3 install kibot --no-compile
#pip3 install kikit pcbdraw

pip3 uninstall kibot kiauto kibot
pip3 install git+https://github.com/INTI-CMNB/KiBot/ --no-compile
pip3 install git+https://github.com/INTI-CMNB/KiAuto/ 
pip3 install git+https://github.com/yaqwsx/PcbDraw/


```