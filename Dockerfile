ARG VERSION=3.13
FROM alpine:$VERSION
RUN apk update && apk upgrade && apk add bash && apk add ruby && gem install lolcat
WORKDIR  /opt
#ENTRYPOINT ["bash"]
#CMD ["ls","/usr/bin/lolcat"]
ENTRYPOINT ["/usr/bin/lolcat","-p","0.3"]
CMD ["/opt/lolcat.txt"]
