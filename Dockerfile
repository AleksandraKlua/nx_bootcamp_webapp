FROM ubuntu:18.04 AS builder

RUN apt-get update && apt-get install -y wget

RUN wget -O hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.83.1/hugo_extended_0.83.1_Linux-64bit.deb && \
    apt install ./hugo.deb && \
    rm hugo.deb

COPY . .
RUN hugo

FROM nginx
RUN rm -rf /usr/share/nginx/html/*
COPY --from=builder ./public /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
