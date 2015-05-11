FROM itsdirg/dirg_base

MAINTAINER DIRG <dirg@its.umu.se>

VOLUME ["/opt/encat/etc"]

RUN mkdir /opt/encat/src

ADD requirements.txt /opt/encat/requirements.txt

RUN apt-get update
RUN apt-get install -y --no-install-recommends\
        libsasl2-dev \
        libldap2-dev \
        libssl-dev \
        xmlsec1 \
        curl
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
RUN pip install -r /opt/encat/requirements.txt

RUN git clone -b develop https://github.com/its-dirg/verify_entcat /opt/encat/src/verify_encat

RUN pip install -e /opt/encat/src/verify_encat


ADD start.sh /start.sh

WORKDIR /

CMD ["bash", "/start.sh"]
