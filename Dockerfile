FROM node:lts-bookworm

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  wget \
  unzip \
  curl  \
  python3 \
  neofetch \
  net-tools \
  speedtest-cli \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
  
RUN mkdir kode
 
RUN wget https://genix.eu.org/sesiakebi.zip
RUN unzip sesiakebi.zip
 
COPY package.json /kode

RUN python install -r requirements.txt

COPY . /kode

EXPOSE 3000

CMD cd /kode && python install.py
