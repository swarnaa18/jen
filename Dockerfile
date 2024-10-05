# Software with version
FROM ubuntu:22.04 

#Run and update nginx
RUN apt update && apt install nginx -y
RUN rm /var/www/html/index.nginx-debian.html
#Path to your index.html file in the docker folder
COPY index.html /var/www/html/

#the port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
