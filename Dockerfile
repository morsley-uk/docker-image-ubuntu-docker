FROM alpine:3.11

RUN apk update
RUN apk add --update docker openrc
RUN rc-update add docker boot

#RUN service docker start 

CMD ["echo". "Hello! :-)"]