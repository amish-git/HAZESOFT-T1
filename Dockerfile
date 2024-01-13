FROM alpine:latest
LABEL version="1.0" description="setup nginx server"
RUN apk update && apk upgrade
RUN apk add --no-cache nginx
# Backup original nginx.conf file.
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
RUN mkdir -p /var/lib/nginx/html/site

COPY /nginx.conf /etc/nginx/
COPY /site/*  /var/lib/nginx/html/site/
#COPY index.html /usr/share/nginx/html
#RUN apt-get install -y curl nginx
EXPOSE 80 
#running nginx in the foreground
CMD ["nginx","-g","daemon off;"]




