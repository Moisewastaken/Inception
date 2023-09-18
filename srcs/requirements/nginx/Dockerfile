FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt install nginx curl openssl -y

RUN mkdir /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=Charente/L=Angouleme/O=42/OU=42/CN=mcochin.42.fr/UID=mcochin"

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /run/nginx

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]
