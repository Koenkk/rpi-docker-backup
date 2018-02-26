FROM arm32v6/alpine:3.7

# Install zip
RUN apk --no-cache add zip

# Copy files
COPY start-cron.sh /
COPY backup.sh /
COPY crontab /

# CMD
CMD ["/start-cron.sh"]
