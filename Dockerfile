FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies, Node.js 20, and cleanup in a single layer
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
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Clone and install the Miruro-API repository dependencies
RUN git clone https://github.com/walterwhite-69/Miruro-API.git /opt/Miruro-API && \
    cd /opt/Miruro-API && \
    pip3 install --no-cache-dir -r requirements.txt

# Clone and install the Anivexa-API repository dependencies
RUN git clone https://github.com/walterwhite-69/Anivexa-API.git /opt/Anivexa-API && \
    cd /opt/Anivexa-API && \
    npm install

# Set up working directory and permissions
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

# Copy and install local project dependencies
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .
