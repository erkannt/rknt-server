FROM ckulka/baikal:nginx@sha256:22d5b8b5db962b41826cea4996f600833d300aad3d6bb17f57db611800b347e1

RUN apt update \
	&& apt-get remove -y sendmail \
	&& apt-get install -y msmtp msmtp-mta \
	&& rm -rf /var/lib/apt/lists/*
