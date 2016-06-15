# Use Alpine Linux
FROM matriphe/alpine-php:cli

# Declare maintainer
MAINTAINER Muhammad Zamroni <halo@matriphe.com>

# Version
ENV COMPOSER_VERSION 1.1.2

# Let's roll
RUN	apk update && \
	apk upgrade && \
	apk add --update curl openssl && \
	curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION} && \
	chmod +x /usr/local/bin/composer && \
	apk del curl openssl && \
	rm -rf /var/cache/apk/*

# Command
CMD ["/usr/local/bin/composer", "--help"]
