FROM --platform=linux/arm64/v8 ubuntu:latest

RUN mkdir -p /home/vsouth /app \
    && groupadd -r vsouth --gid=999 \
    && useradd --no-log-init -M -r -g vsouth --uid=999 --home-dir=/home/vsouth --shell=/bin/bash vsouth \
    && chown -R vsouth:vsouth /home/vsouth

COPY ./appserver /app/server

RUN apt update \
    && apt upgrade -y \
    && apt install ca-certificates tzdata locales -y \
    && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG=en_US.utf8

EXPOSE 27019

USER vsouth:vsouth
WORKDIR /home/vsouth

ENTRYPOINT ["/app/server"]