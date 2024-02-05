FROM prom/prometheus:v2.45.0

# Needed for accessing docker.sock.
# Just a workaround here, better handled via file permissions in a production system.
USER root

COPY /config /etc/prometheus/
