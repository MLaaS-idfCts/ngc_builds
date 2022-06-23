ARG VERSION
ARG EXTENSION
ARG PKG_MANAGER
FROM nvcr.io/nvidia/$EXTENSION:$VERSION

ENV USER=roger \
    UID=10000 \
    GID=users

COPY start.sh /start.sh 

COPY sshd_config /sshd_config

RUN useradd -l -m -s /bin/bash -N -u $UID $USER && \
    chmod g+w /etc/passwd /etc/group && \
    echo "roger:federer" | chpasswd && \
    $PKG_MANAGER  update -y && \
    $PKG_MANAGER install -y openssh-server && \
    chmod +x /start.sh && \
    chmod +r /sshd_config && \
    echo "export PATH=$PATH" >> /home/$USER/.bashrc

EXPOSE 2222

USER $USER

CMD ["/start.sh"]
