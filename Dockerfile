FROM linuxserver/radarr:nightly
LABEL maintainer="lukas@kucharczyk.xyz"
COPY healthcheck.sh /
HEALTHCHECK CMD /healthcheck.sh

