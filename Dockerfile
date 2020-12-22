FORM ubuntu:latest as application

RUN apt-get update

WORKDIR /app
COPY . .

FORM nginx:latest

COPY --from=application /app/index.html /usr/share/nginx/html/
COPY --from=application /app/default /etc/nginx/sites-available/
EXPOSE 80
