.. _configuration:

*******************
Configuration
*******************

To run the verify encat server using the docker image, you need to bind a volume to **/opt/encat/etc** in the container.
This volume need to hold all configurations of the verify encat server.

Config volume structure
================

The volume need to have the following structure::

    {pki: specified in conf.py}
        - {crt: specified in conf.py}
        - {key: specified in conf.py}
    conf.py
    server_conf.py
    start.sh

The start.sh script
-------------------

In the volume root, a file **start.sh** must exist. This file is the starting point of the application and is
responsible of starting the oictest server.

An example of a start script::

    #!/bin/bash

    python sp.py -D https://md.nordu.net/role/idp.ds conf


This starts a verify encat server with a config file **conf.py**

Environment variables
=====================

To update metadata, add the env **UPDATE_METADATA** to the container::

    docker run -e UPDATE_METADATA=1 ... itsdirg/verify_encat

To build config from the conf.py file, add the env **BUILD_CONF** to the container::

    docker run -e BUILD_CONF=1 ... itsdirg/verify_encat

To build metadata, add the env **BUILD_METADATA** to the container::

    docker run -e BUILD_METADATA=1 ... itsdirg/verify_encat
