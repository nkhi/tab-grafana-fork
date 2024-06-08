#!/bin/bash

# Check if the certificate file exists
CERT_FILE="/etc/certs/root.crt"

echo "Checking for certificate file at ${CERT_FILE}..."

if [ -f "$CERT_FILE" ]; then
    echo "Certificate file found."
    # Additional checks like permissions can be added here
    ls -l "$CERT_FILE"
else
    echo "Certificate file not found."
fi

# Continue with the original entrypoint command
exec /run.sh "$@"
