ARG BASE_IMAGE=debian:bookworm

FROM ${BASE_IMAGE}

LABEL maintainer="Kai Mayer <kai.mayer@dieklingel.com>"

RUN apt-get update && \
	apt-get install -y \
	build-essential \
	git \
	cmake \
	libasound2-dev \
	libpulse-dev \
	libssl-dev \
	libxml2-dev \
	libsqlite3-dev \
	libavutil-dev \
	libavformat-dev \
	libavcodec-dev \
	libopus-dev \
	libvpx-dev \
	libspeexdsp-dev

COPY 3rdparty/pjproject /pjproject

WORKDIR /pjproject
RUN ./configure && \
	make dep && \
	make && \
	make install

WORKDIR /
