# Bot - Dockerfile
#
# VERSION               0.0.1

FROM node

MAINTAINER Nicolás Espejo <nicolasgermanespejo@gmail.com>

#Entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]