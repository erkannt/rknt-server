FROM ckulka/baikal:nginx@sha256:1a901125d121a3e414cda87c617bd322c57ae86b9d2aedbff7b3a7ac84bb23aa

RUN apt update \
	&& apt-get remove -y sendmail \
	&& apt-get install -y msmtp msmtp-mta \
	&& rm -rf /var/lib/apt/lists/*
