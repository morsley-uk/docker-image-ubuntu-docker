FROM ubuntu

RUN apt update
RUN apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN apt update
RUN apt install docker-ce -y

CMD ["echo", "Hello! :-)"]