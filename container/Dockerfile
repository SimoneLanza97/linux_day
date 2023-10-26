FROM ubuntu:latest
RUN apt-get update 
RUN apt-get install -y openssh-server
RUN apt-get install -y gnupg
RUN apt-get install -y xxd
RUN apt-get install -y sudo
COPY . .
RUN mv banner.txt /etc/ssh/banner.txt 
RUN cat ssh_config >> /etc/ssh/ssh_config
#RUN chmod +x users.sh 
#RUN chmod +x banner.sh 
#RUN chmod +x messages.sh 
#RUN chmod +x sc_write.sh 
#RUN chmod +x script.sh 
#RUN chmod 733 route.sh
#RUN chmod +x /bin/tar  
RUN bash users.sh
RUN bash banner.sh
RUN bash messages.sh
RUN bash sc_write.sh 
RUN bash permiss.sh 
RUN chown utente6:utente6 route.sh
RUN rm users.sh banner.sh messages.sh passwords.txt permiss.sh sc_write.sh ssh_config 
CMD ["bash", "-c" , "service ssh start && sleep infinity "]
