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

RUN python3 install -r requirements.txt

COPY . .

EXPOSE 3000

CMD python install.py
