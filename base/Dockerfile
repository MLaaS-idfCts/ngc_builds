ARG VERSION
ARG EXTENSION
FROM nvcr.io/nvidia/$EXTENSION:$VERSION

ENV USER=roger \
    UID=10000 \
    GID=users

RUN useradd -l -m -s /bin/bash -N -u $UID $USER

USER $USER

ENV IMAGE_TYPE=base
