FROM snapcore/snapcraft

LABEL maintainer="artificerpi@outlook.com"

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /snap/app

RUN apt-get update && apt-get install -y curl apt-utils
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g electron-installer-snap

VOLUME [ "/snap/app" ]

ENTRYPOINT ["/usr/bin/electron-installer-snap"]
