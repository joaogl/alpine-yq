FROM alpine/git:v2.36.3
MAINTAINER Pixie <pixie.sh>

RUN wget $(curl -s https://api.github.com/repos/mikefarah/yq/releases/latest | grep browser_download_url | grep linux_amd64 | cut -d '"' -f 4) -O /usr/bin/yq
RUN chmod +x /usr/bin/yq
