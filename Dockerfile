FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    libx11-6 libxext6 libxft2 libxi6 libxrender1 libxtst6 \
    && rm -rf /var/lib/apt/lists/*

# Copy Quartus installation into container
COPY quartus /opt/quartus

ENV PATH="/opt/quartus/quartus/bin:${PATH}"
