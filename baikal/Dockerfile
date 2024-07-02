FROM ckulka/baikal:nginx@sha256:b6c768d838a1caafe737d4b5f188c7d182bbead5ae4e97ee381511f3f186e552

RUN apt update \
	&& apt-get remove -y sendmail \
	&& apt-get install -y msmtp msmtp-mta \
	&& rm -rf /var/lib/apt/lists/*
