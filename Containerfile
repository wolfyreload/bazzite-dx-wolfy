ARG BASE_IMAGE
ARG BASE_TAG

FROM ghcr.io/ublue-os/${BASE_IMAGE}:${BASE_TAG}

COPY system_files /
COPY build_files /tmp

RUN /tmp/install-apps.sh
RUN /tmp/fix-opt.sh
RUN /tmp/build-initramfs.sh
RUN /tmp/cleanup.sh
