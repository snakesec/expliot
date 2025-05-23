#!/bin/bash
#
# Check the versions of the installed dependency packages

pip3 list | grep "\
aiocoap\|\
AWSIoTPythonSDK\|\
bluepy\|\
cmd2\|\
cryptography\|\
jsonschema\|\
paho-mqtt\|\
pyi2cflash\|\
pymodbus\|\
pynetdicom\|\
pyparsing\|\
pyserial\|\
pyspiflash\|\
python-can\|\
python-magic\|\
UPnPy\|\
xmltodict\|\
zeroconf" | grep -v "jsonschema-specifications"