Task 1:
-Set up nginx server using base alpine linux image.
-We use our own nginx configuration file for serving our content through root folder as i have described in dockerfile too.

-After you create docker file, build your own custom images by typing commands:
-docker build -t (tag) ver:v1 .(build context) 

- Then you can build your container from that image using:
- docker run -d --name <container-name> -p 9000:80 <img-name>
(Here you can give any name to 'container-name' )
( -d = detach mode , -p = published port <host port>:<container-port> , <img-name> = your created image) 

-We can serve our custom html at browser by hitting http://localhost:9000/site/index.html 
-or in case of vagrant, use ip of the vm created.

