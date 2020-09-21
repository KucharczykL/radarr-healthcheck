FROM linuxserver/radarr:preview
COPY healthcheck.sh /
HEALTHCHECK CMD /healthcheck.sh

