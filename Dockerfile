ARG VERSION=latest

FROM grafana/grafana-oss:${VERSION}

# Set environment variables for plugins
ENV GF_INSTALL_PLUGINS=grafana-piechart-panel,grafana-worldmap-panel,grafana-clock-panel,grafana-simple-json-datasource

# Copy the DB certificate and the check script into the container
COPY certs/rooot.crt /etc/certs/root.crt
COPY certs/check_cert.sh /etc/certs/check_cert.sh

# Make the script executable and set it as the entrypoint
RUN chmod +x /etc/certs/check_cert.sh

ENTRYPOINT ["/etc/certs/check_cert.sh"]
