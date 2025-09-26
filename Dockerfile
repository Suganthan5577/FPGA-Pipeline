FROM ubuntu:20.04

# Install only GHDL (minimal simulation setup)
RUN apt-get update && apt-get install -y \
    ghdl \
    && rm -rf /var/lib/apt/lists/*

# Set workspace
WORKDIR /workspace

# Copy your design + testbench
COPY Vhdl1.vhd .
COPY Vhdl1_tb.vhd .

CMD ["/bin/bash"]
