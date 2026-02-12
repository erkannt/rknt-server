FROM alpine:3@sha256:25109184c71bdad752c8312a8623239686a9a2071e8825f20acb8f2198c3f659
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
