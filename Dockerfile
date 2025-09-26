# Minimal runtime image
FROM ubuntu:20.04

WORKDIR /app

# Copy your prebuilt bitstream into container
COPY bitstreams/*.sof /app/

# Default action: list contents so you can check bitstream exists
CMD ["ls", "-lh", "/app"]
