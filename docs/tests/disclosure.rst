Self disclosure
===============

This is not a test per se but a helper. The plugin reports details about
EXPLIoT and the host where it runs. It gives you information that could be
useful while debugging issues with EXPLIoT or other plugins.


self_disclosure.generic.self
----------------------------

The plugin doesn't have any argument which you have to provide.

**Usage details:**

.. code-block:: console

   ef> run self_disclosure.generic.self


**Example:**

Get the details.

.. code-block:: console

    $ expliot run self_disclosure.generic.self
    [...]
    [*] 
    [*] Display details about EXPLIoT itself
    [+] 
    Expliot Release: 0.10.0
    Python Release: 3.12.3
    Distribution: Fedora Linux 40 
    Host Platform: Linux-6.8.7-300.fc40.x86_64-x86_64-with-glibc2.39
    Host Processor: x86_64
    Host Architecture: 64bit, ELF
    Root: False
    Usb Devices: {
        "/dev/ttyUSB2": {
            "id": "067b:2303",
            "device_node": "/dev/bus/usb/003/060",
            "manufacturer": "Prolific Technology, Inc.",
            "product": "PL2303 Serial Port / Mobile Phone Data Cable",
            "device_path": "/devices/pci0000:00/0000:00:14.0/usb3/3-1"
        },
        "/dev/ttyUSB0": {
            "id": "0403:6010",
            "device_node": "/dev/bus/usb/003/053",
            "manufacturer": "Future Technology Devices International, Ltd",
            "product": "FT2232C/D/H Dual UART/FIFO IC",
            "device_path": "/devices/pci0000:00/0000:00:14.0/usb3/3-7"
        },
    }
    Bus Auditor: True
    Zigbee Auditor: False
    Timestamp: 2024-05-27 09:31:45
    [+] Test self_disclosure.generic.self passed

