FROM debian

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  wget \
  unzip \
  curl \
  pipx \
  python3-setuptools \
  python3-pip \
  python3-full \
  python-socketio \
  neofetch \
  net-tools \
  speedtest-cli \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
  
RUN mkdir kode

COPY . .

EXPOSE 3000

CMD python install.py
