.. _install:

*******************
Quick install guide
*******************

Install Docker
==============

To install docker on your specific OS, follow the instruction on the docker page: http://docs.docker.com/installation/

Install verify encat using docker
==============================

Download the project from: https://github.com/its-dirg/verify_entcat_docker

All files necessary to build the image are located in the **dockerfiles** directory. To build the image run the script::

    dockerfiles/build.sh

If you want to test the verify encat, you can run the script located in the **example** directory::

    example/run.sh

This will start the server with settings from the **example/etc** directory.

For more information about the custom configuration see
:ref:`configuration`