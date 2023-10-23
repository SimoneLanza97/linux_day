FROM ubuntu:latest
RUN apt-get update 
RUN apt-get install -y openssh-server
COPY ssh_config ssh_config 
COPY users.sh users.sh 
COPY banner.sh banner.sh 
COPY messages.sh messages.sh 
COPY banner.txt /etc/ssh/banner.txt 
RUN cat ssh_config >> /etc/ssh/ssh_config
RUN chmod +x users.sh 
RUN chmod +x banner.sh 
RUN chmod +x messages.sh 
RUN bash users.sh
RUN bash banner.sh
RUN bash messages.sh
CMD ["bash", "-c", "service ssh start && sleep infinity"]
