FROM ubuntu:latest

RUN apt-get update
RUN apt install -y nginx

WORKDIR /app
COPY . .

COPY app/index.html /usr/share/nginx/html/
COPY app/default /etc/nginx/sites-available/

EXPOSE 80
