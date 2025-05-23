TLS/SSL
=======

This plugin connects to a given host and port while establishing
a TSL/SSL secured connection and retrieves the details.
 
For more comprehensive details use ``testlssl.sh``.

nmap.generic.cmd
-----------------

As default port 443 is used on the given host ``-t``.

**Usage details:**

.. code-block:: console

   ef> run tls.generic.collect -h


**Example:**

Scan the local network 192.168.0.0/24 with ``-sP`` to skip the port scan part.

.. code-block:: console

   $ expliot run tls.generic.collect -t expliot.io
   [*] Test:         tls.generic.collect
   [...]
   [+] TLS target = (expliot.io)
   [+] TLS Version: TLSv1.3
   [+] Subject: <Name(CN=expliot.io)>
   [+] Issuer: <Name(C=US,O=Let's Encrypt,CN=E1)>
   [+] Valid from: 2024-04-13 20:45:03 UTC
   [+] Valid to: 2024-07-12 20:45:02 UTC
   [+] Serial number: 269348372431688029995261256279084243456048
   [+] 
   [+] Test tls.generic.collect passed

