FROM ubuntu 

LABEL Kammradt <vinicius.kammradt1@gmail.com>

# during build process
RUN apt-get update

# only when create the container
CMD [ "echo", "Hi ;)" ]