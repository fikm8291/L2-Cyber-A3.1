# Use the official Dev Containers Node.js image
FROM mcr.microsoft.com/devcontainers/javascript-node:1-24-bookworm

# Install additional Linux tools for the assessment
RUN apt-get update && apt-get install -y \
    tree \
    acl \
    nano \
    vim \
    htop \
    zip \
    unzip \
    wget \
    curl \
    file \
    procps \
    sudo \
    man-db \
    manpages \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
