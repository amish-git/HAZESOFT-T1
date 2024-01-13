FROM alpine:latest
LABEL version="1.0" description="setup nginx server"
RUN apk update && apk upgrade
RUN apk add --no-cache nginx
# Backup original nginx.conf file.
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
RUN mkdir -p /var/lib/nginx/html/site

#copy the nginx conf to the nginx config location.
COPY /nginx.conf /etc/nginx/

#copying our index.html file to static dir inside the nginx document root folder
COPY /site/*  /var/lib/nginx/html/site/
#COPY index.html /usr/share/nginx/html
#RUN apt-get install -y curl nginx
#Expose our container port so that we can access it.
EXPOSE 80 
#running nginx in the foreground
CMD ["nginx","-g","daemon off;"]




