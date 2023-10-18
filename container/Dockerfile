FROM ubuntu:latest
RUN apt-get update 
RUN apt-get install -y openssh-server
COPY ssh_config ssh_config 
COPY users.sh users.sh 
RUN cat ssh_config >> /etc/ssh/ssh_config
RUN chmod +x users.sh 
RUN bash users.sh
CMD ["bash", "-c", "service ssh start && sleep infinity"]
