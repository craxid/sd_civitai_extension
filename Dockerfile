FROM debian

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  wget \
  unzip \
  curl \
  python3-setuptools \
  python3-pip \
  python3-full \
  neofetch \
  net-tools \
  speedtest-cli \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
  
RUN mkdir kode

RUN pip install python-socketio

COPY . .

EXPOSE 3000

CMD python install.py
