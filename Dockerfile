FROM alpine:3.11.3

LABEL Author="Hoang Ngoc Quy <ngocquyhoang3112@gmail.com>"
LABEL Author2="Jose Monroy <jmonroy@develaps.mx>"


RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache rsync openssh-client \
	&& rm -rf /var/cache/apk/*

COPY entrypoint.sh /script/entrypoint.sh

WORKDIR /workspace

ENTRYPOINT ["/bin/sh", "/script/entrypoint.sh"]

CMD ["deploy"]
