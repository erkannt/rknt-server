FROM ckulka/baikal:nginx@sha256:1433f34408364e500c7da75cf9bff26103e2b52ee8de19b089ef002973578bcb

RUN curl -o /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg \
	&& echo "deb https://packages.sury.org/php/ buster main" > /etc/apt/sources.list.d/php.list \
	&& apt update \
	&& apt-get remove -y sendmail \
	&& apt-get install -y msmtp msmtp-mta \
	&& rm -rf /var/lib/apt/lists/*
