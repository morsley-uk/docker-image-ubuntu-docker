#FROM ubuntu:3.11

#RUN apt-get update

#RUN apt-get install apt-transport-https \
#                    ca-certificates \
#					curl \
#					software-properties-common -y
					
#RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

#RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#RUN apt-get update

#RUN apt-get install docker-ce -y

#RUN apt-get install systemd -y

#RUN systemctl enable docker

#RUN systemctl start docker

FROM alpine:3.11
RUN apk update
RUN apk add --update docker openrc
RUN rc-update add docker boot

#RUN service docker start 

CMD ["sh"]