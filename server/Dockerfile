FROM --platform=$TARGETPLATFORM debian:latest

RUN mkdir -p -m 0700 /home/vsouth \
    && mkdir -p -m 0750 /app \
    && groupadd -r vsouth --gid=999 \
    && useradd --no-log-init -M -r -g vsouth --uid=999 --home-dir=/home/vsouth --shell=/sbin/nologin vsouth \
    && chown -R vsouth:vsouth /home/vsouth \
    && chown -R root:vsouth /app

COPY --chown=root:vsouth --chmod=750 ./appserver /app/server

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y ca-certificates tzdata locales \
    && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG=en_US.utf8

EXPOSE 27019

USER vsouth:vsouth
WORKDIR /home/vsouth

ENTRYPOINT ["/app/server"]