FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Set up working directory early
WORKDIR /usr/src/app

# Install all system dependencies, Node.js 20, Python dependencies, clone repositories, and cleanup in optimized layers
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3.10 \
    python3-pip \
    python3-dev \
    ffmpeg \
    aria2 \
    mkvtoolnix \
    git \
    curl \
    tzdata \
    openssh-client \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/* \
    # Clone and install Miruro-API dependencies
    && git clone https://github.com/walterwhite-69/Miruro-API.git /opt/Miruro-API \
    && pip3 install --no-cache-dir -r /opt/Miruro-API/requirements.txt \
    # Clone and install Anivexa-API dependencies
    && git clone https://github.com/walterwhite-69/Anivexa-API.git /opt/Anivexa-API \
    && cd /opt/Anivexa-API && npm install \
    # Set permissions for working directory
    && chmod 777 /usr/src/app

# Copy local project requirements and install them
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .
