FROM alpine:3
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
