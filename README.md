# Epson L4160 Ink Waste Resetter

This python script resets the ink waste counter of the printer Epson L4160.
It uses [Easy SNMP](https://easysnmp.readthedocs.io/en/latest/) which might be tricky to install, therefore also is included a Dockerfile to build an image with all dependencies.

## How to use it
To use this script the printer must be connected by Wi-Fi. 

### Run with a prebuilt Docker image
To run with a prebuild docker image run the following command

```
docker run nicootto/epson_l4160_ink_waste_resetter <PRINTER_IP>
```

### Run with Docker from scratch

```
docker build -t epson_l4160_ink_waste_resetter .
docker run epson_l4160_ink_waste_resetter <PRINTER_IP>
```

### Run without Docker
```
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python resetter.py <PRINTER_IP>
```