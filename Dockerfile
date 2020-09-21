FROM linuxserver/radarr:preview
LABEL maintainer="lukas@kucharczyk.xyz"
COPY healthcheck.sh /
HEALTHCHECK CMD /healthcheck.sh

