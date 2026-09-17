FROM debian:13.6

RUN dpkg --add-architecture arm64 \
    && apt update \
    && apt install -y \
        cmake \
        g++-aarch64-linux-gnu \
        gcc-aarch64-linux-gnu \
        make \
        qt6-base-dev:arm64 \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd --gid 1000 kipr \
    && useradd --uid 1000 --gid 1000 kipr

USER kipr:kipr