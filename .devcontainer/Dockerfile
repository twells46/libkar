FROM debian:13.6

RUN dpkg --add-architecture arm64 \
    && apt update \
    && apt install -y \
        cmake \
        fd-find \
        file \
        fish \
        fzf \
        g++-aarch64-linux-gnu \
        gcc-aarch64-linux-gnu \
        git \
        gnupg \
        make \
        qt6-base-dev:arm64 \
        ripgrep \
        wget \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd --gid 1000 code \
    && useradd --uid 1000 --gid 1000 --create-home --shell /bin/bash code
