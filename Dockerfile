FROM ubuntu:latest

RUN apt-get update
RUN apt install -y nginx

WORKDIR /app
COPY . .

RUN /app/index.html /usr/share/nginx/html
RUN /app/default /etc/nginx/sites-available

EXPOSE 80
