FROM alpine:3@sha256:a8560b36e8b8210634f77d9f7f9efd7ffa463e380b75e2e74aff4511df3ef88c
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
