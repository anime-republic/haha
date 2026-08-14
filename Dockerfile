FROM ubuntu:22.04

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install Python 3.10, pip, and required system dependencies (like FFmpeg, aria2, and mkvtoolnix)
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3.10 \
    python3-pip \
    ffmpeg \
    aria2 \
    mkvtoolnix \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set up working directory
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

# Copy files and install python requirements
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .
