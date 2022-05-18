FROM alpine:3.9.6

COPY init.sh /init.sh

RUN apk add --update openssh-client && rm -rf /var/cache/apk/*; \
    chmod +x /init.sh

ENTRYPOINT [ "/init.sh" ] 

EXPOSE 1-65535