FROM prom/prometheus:v3.7.3

# Needed for accessing docker.sock.
# Just a workaround here, better handled via file permissions in a production system.
USER root

COPY /config /etc/prometheus/
