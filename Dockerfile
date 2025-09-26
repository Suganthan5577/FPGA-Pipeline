# Base Quartus build environment
FROM ubuntu:20.04 as builder

RUN apt-get update && apt-get install -y \
    libx11-6 libxext6 libxft2 libxi6 libxrender1 libxtst6 \
    && rm -rf /var/lib/apt/lists/*

COPY quartus /opt/quartus
ENV PATH="/opt/quartus/quartus/bin:${PATH}"

# Copy your project
WORKDIR /workspace
COPY Vhdl1.* .   # your project files
COPY Vhdl1.qpf .
COPY Vhdl1.qsf .

# Run synthesis (this will produce output_files/Vhdl1.sof)
RUN quartus_sh --flow compile Vhdl1
