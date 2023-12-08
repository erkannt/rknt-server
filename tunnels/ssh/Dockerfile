FROM alpine:20230901@sha256:f2d1645cd73c7e54584dc225da0b5229d19223412d719669ebda764f41396853
ENTRYPOINT [ "/entrypoint.sh" ]
EXPOSE 22

RUN apk add --no-cache openssh \
	&& passwd -d root \
	&& adduser -D -s /bin/ash tunnel \
	&& passwd -u tunnel \
	&& chown -R tunnel:tunnel /home/tunnel

ADD entrypoint.sh /
ADD authorized_keys.key /home/tunnel/.ssh/authorized_keys
ADD etc /etc/ssh

RUN chmod 600 /etc/ssh/ssh_host*
