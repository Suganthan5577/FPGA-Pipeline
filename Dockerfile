FROM ubuntu:20.04

# Install dependencies including GHDL + GTKWave
RUN apt-get update && apt-get install -y \
    ghdl gtkwave make gcc gnat \
    libx11-6 libxext6 libxft2 libxi6 libxrender1 libxtst6 \
    && rm -rf /var/lib/apt/lists/*

# Set workspace
WORKDIR /workspace

# Copy your design + testbench
COPY Vhdl1.vhd .
COPY Vhdl1_tb.vhd .

CMD ["/bin/bash"]
