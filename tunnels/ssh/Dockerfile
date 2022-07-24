FROM alpine:3@sha256:7580ece7963bfa863801466c0a488f11c86f85d9988051a9f9c68cb27f6b7872
ENTRYPOINT [ "/entrypoint.sh" ]
EXPOSE 22
ADD entrypoint.sh /
ADD authorized_keys.key /home/tunnel/.ssh/authorized_keys

RUN apk add --no-cache openssh \
	&& passwd -d root \
	&& adduser -D -s /bin/ash tunnel \
	&& passwd -u tunnel \
	&& chown -R tunnel:tunnel /home/tunnel \
	&& ssh-keygen -A
RUN sed -i s/#PermitRootLogin.*/PermitRootLogin\ no/ /etc/ssh/sshd_config \
	&& sed -i s/#PasswordAuthentication.*/PasswordAuthentication\ no/ /etc/ssh/sshd_config \
	&& sed -i s/AllowTcpForwarding\ no/AllowTcpForwarding\ yes/ /etc/ssh/sshd_config \
	&& sed -i s/GatewayPorts\ no/GatewayPorts\ yes/ /etc/ssh/sshd_config
