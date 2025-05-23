Modbus
======

`Modbus <https://en.wikipedia.org/wiki/Modbus>`_ is a serial communication
protocol used in ICS (Industrial Control Systems) infrastructure, typically
be devices like PLCs etc. Modbus is still an integral part of ICS and in your
IoT assessments for Smart ICS infrastructure (Industry 4.0) you may still
encounter devices talking Modbus.

modbus.generic.readtcp
----------------------

This plugin reads coil, register values from a Modbus server running over a
TCP/IP network.

**Usage details:**

.. code-block:: console

   ef> run modbus.generic.readtcp -h

modbus.generic.writetcp
-----------------------

This plugin writes coil and register values to a Modbus server running over a
TCP/IP network.

**Usage details:**

.. code-block:: console

   ef> run modbus.generic.writetcp -h


Examples
^^^^^^^^

The code below is based on a `Stackoverflow entry <https://stackoverflow.com/questions/76261295/how-do-i-make-a-modbus-simulation>`_
which is about a Modbus simulation. It's using `pymodus`, the same module that is
powering by EXPLIoT.

.. code-block:: python

   from pymodbus.datastore import ModbusSequentialDataBlock, ModbusSlaveContext, ModbusServerContext
   from pymodbus.server.async_io import StartTcpServer

   # Define the Modbus registers
   coils = ModbusSequentialDataBlock(1, [False] * 10)
   discrete_inputs = ModbusSequentialDataBlock(1, [False] * 10)
   holding_registers = ModbusSequentialDataBlock(1, [0] * 10)
   input_registers = ModbusSequentialDataBlock(1, [0] * 10)

   # Add some dummy values/states
   holding_values = [20, 10, 2, 16]
   holding_registers.setValues(1, holding_values)
   print(f"Holding values: {holding_values}")

   coil_states = [False, False, True, True]
   coils.setValues(1, coil_states)
   print(f"Coil states: {coil_states}")

   discrete_values = [True, True, False, False]
   discrete_inputs.setValues(1, discrete_values)
   print(f"Discrete values: {discrete_values}")

   input_data = [1,2,3,4]
   input_registers.setValues(1, input_data)
   print(f"Input register: {input_data}")

   # Define the slave context
   slave_context = ModbusSlaveContext(
      di=discrete_inputs,
      co=coils,
      hr=holding_registers,
      ir=input_registers
   )

   # Define the Modbus server context
   server_context = ModbusServerContext(slaves=slave_context, single=True)

   # Start the Modbus TCP server
   StartTcpServer(context=server_context, address=("localhost", 5020))

This allow you to familiar yourself with the plugin.

.. code-block:: console

   ef> run modbus.generic.readtcp -r 127.0.0.1 -p 5020  -i 2 -c 5
   [...]
   [*] Sending read command to Modbus Server (127.0.0.1) on port (5020)
   [*] (item=holding_register)(address=0)(count=5)(unit=1)
   [+] (holding_register[0]=20)
   [+]
   [+] (holding_register[1]=10)
   [+]
   [+] (holding_register[2]=2)
   [+]
   [+] (holding_register[3]=16)
   [+]
   [+] (holding_register[4]=0)
   [+]
   [+] Test modbus.generic.readtcp passed
