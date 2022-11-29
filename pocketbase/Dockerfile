FROM alpine:3.16 AS downloader

ARG POCKETBASE_VERSION=0.7.10
ARG PLATFORM=linux_amd64

# Download Pocketbase and install it
ADD https://github.com/pocketbase/pocketbase/releases/download/v${POCKETBASE_VERSION}/pocketbase_${POCKETBASE_VERSION}_${PLATFORM}.zip /tmp/pocketbase.zip
RUN unzip /tmp/pocketbase.zip -d /usr/local/bin/
RUN chmod +x /usr/local/bin/pocketbase
RUN echo 1

FROM scratch
COPY --from=downloader /usr/local/bin/pocketbase /pocketbase

# Start Pocketbase
CMD [ "/pocketbase", "serve", "--http", "0.0.0.0:8090"]