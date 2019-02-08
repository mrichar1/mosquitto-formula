# mosquitto-formula

A SaltStack formula to control a [mosquitto](https://mosquitto.org) server.

**NOTE**

See the full [Salt Formulas installation and usage instructions](https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html).


## Available states

### **mosquitto**

Installs the mosquitto package, writes configuration and starts the associated service.

By default will start the service listening locally, allowing anonymous connections.

For alternative configuration, see `pillar.example` and `man mosquitto.conf`



