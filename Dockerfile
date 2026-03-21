FROM alpine:3.19
RUN apk add --no-cache bash procps
COPY monitor.sh /usr/local/bin/monitor.sh
RUN chmod +x /usr/local/bin/monitor.sh
WORKDIR /data
ENTRYPOINT ["/bin/bash", "/usr/local/bin/monitor.sh"]
