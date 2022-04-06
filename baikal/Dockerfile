FROM ckulka/baikal:nginx@sha256:003602cf406d78aec360d69dfca9497e92eebac2619594785330bf5436270939

RUN curl -o /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg \
	&& echo "deb https://packages.sury.org/php/ buster main" > /etc/apt/sources.list.d/php.list \
	&& apt update \
	&& apt-get remove -y sendmail \
	&& apt-get install -y msmtp msmtp-mta \
	&& rm -rf /var/lib/apt/lists/*
