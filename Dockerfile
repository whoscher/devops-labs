FROM ubuntu:25.10
RUN apt-get update && apt-get install -y bash procps && rm -rf /var/lib/apt/lists/*
COPY monitor.sh /usr/local/bin/monitor.sh
RUN chmod +x /usr/local/bin/monitor.sh
WORKDIR /data
CMD ["/bin/bash", "/usr/local/bin/monitor.sh"]
