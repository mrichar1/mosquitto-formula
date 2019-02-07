================
mosquitto-formula
================

A SaltStack formula to control a mosquitto server.

**NOTE**

See the full `Salt Formulas installation and usage instructions
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.


Available states
================

.. contents::
    :local:

``mosquitto``
------------

Installs the mosquitto package, writes configuration and starts the associated service.

By default will start the service listening locally, allowing anonymous connections.

For alternative configuration, see `pillar.example` and `man mosquitto.conf`



