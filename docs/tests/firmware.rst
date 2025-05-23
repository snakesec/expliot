Firmware
========

`Firmware <https://en.wikipedia.org/wiki/Firmware>`_ is the core of any
device. It brings the equipment to life and powers all its operations. Unfortunately,
vulnerabilities in the firmware can compromise the complete system and may also
cause physical damage in and around the device.

firmware.linux.gencdxbom
------------------------

This plugin generates an SBOM (Software Bill Of Material) from the firmware file
system that conforms to the `CycloneDX SBOM Specification <https://cyclonedx.org/specification/overview/>`_.
CycloneDX is an open specification for generating SBOMs. More details can be found
here - :doc:`../compliance/cyclonedx`.

**Usage details:**

.. code-block:: console

   ef> run firmware.linux.gencdxbom -h

Examples
^^^^^^^^

Generate CycloneDX SBOM from an extracted firmware filesystem and write
(``-f``) the SBOM JSON to a file.

.. code-block:: console

    ef> run firmware.linux.gencdxbom -r /tmp/firmware/rootfs -f /tmp/foo.json
    [...]
    [*] Generating CycloneDX bom of directory (/tmp/firmware/rootfs)
    [+] Total count:
    [+] files: 5
    [+] dirs: 4
    [+] hiddenfiles: 1
    [+] hiddentdirs: 1
    [+] symlinks: 0
    [+]
    [+]
    [+] Test firmware.linux.gencdxbom passed


You can also use the verbose (``-v``) option to see the SBOM details. Please
note that this output is only for viewing and does not conform to CycloneDX Spec.

.. code-block:: console

    ef> run firmware.linux.gencdxbom -r /tmp/firmware/rootfs -v
    [...]
    [*] Generating CycloneDX bom of directory (tmp/firmware/rootfs)
    [+] Total count:
    [+] files: 5
    [+] dirs: 4
    [+] hiddenfiles: 1
    [+] hiddentdirs: 1
    [+] symlinks: 0
    [+]
    [+] bomFormat: CycloneDX
    [+] specVersion: 1.4
    [+] serialNumber: urn:uuid:c9461f43-1b29-40e3-c29e-79ba93ac7874
    [+] version: 1
    [+] metadata:
    [+]   timestamp: 1258406532.832527
    [+]   tools:
    [+]       vendor: EXPLIoT
    [+]       name: EXPLIoT Framework
    [+] components:
    [+]     type: file
    [+]     name: pass
    [+]     mime-type: text/plain
    [+]     description: ASCII text
    [+]     hashes:
    [+]         alg: SHA-1
    [+]         content: a1a9de5dc7f97ccd8c4de52d04e30b3dd52ac4f0
    [+]         alg: SHA-256
    [+]         content: e08abd37723c0a3ea3724a4d1bc8b2ce192751de961160140e5c5a66e2d7afb8
    [+]     properties:
    [+]         name: expliot:file:path
    [+]         value: /.protected/pass
    [+]         name: expliot:file:mode
    [+]         value: -rw-rw-r--
    [+]         name: expliot:file:size
    [+]         value: 7
    [...]
    [+]     type: file
    [+]     name: ls
    [+]     mime-type: application/x-sharedlib
    [+]     description: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, missing section headers
    [+]     hashes:
    [+]         alg: SHA-1
    [+]         content: 3760d26e2e361384598b1e01d65dec56547ea1af
    [+]         alg: SHA-256
    [+]         content: 10d54b2b1dbf8f73fc152ba0430e59bdc0c4c2ac5c40d990ea4e36de1407f022
    [+]     properties:
    [+]         name: expliot:file:path
    [+]         value: /usr/bin/ls
    [+]         name: expliot:file:mode
    [+]         value: -rwxr-xr-x
    [+]         name: expliot:file:size
    [+]         value: 116696
    [+]
    [+] Test firmware.linux.gencdxbom passed
