FROM alpine

RUN apk --update add bash netcat-openbsd
ADD start.sh /bin/

SHELL ["/bin/bash"]
EXPOSE 5959
STOPSIGNAL 15

ENTRYPOINT ["/bin/bash"]
CMD ["/bin/start.sh"]
