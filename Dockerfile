ARG VERSION=latest

FROM grafana/grafana-oss:${VERSION}

ENV GF_INSTALL_PLUGINS=grafana-piechart-panel,grafana-worldmap-panel,grafana-clock-panel,grafana-simple-json-datasource

# Copy the DB certificate and the check script into the container
COPY certs/root.crt /etc/certs/root.crt

RUN head -2 /etc/certs/root.crt