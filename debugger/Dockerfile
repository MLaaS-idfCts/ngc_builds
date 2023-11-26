ARG VERSION
ARG EXTENSION
FROM nvcr.io/nvidia/$EXTENSION:$VERSION

ENV USER=roger \
    UID=1000 \
    GID=users

COPY start.sh /start.sh 

COPY sshd_config /sshd_config

RUN useradd -l -m -s /bin/bash -N -u $UID $USER && \
    echo "roger:federer" | chpasswd && \
    chmod g+w /etc/passwd /etc/group && \
    usermod -a -G shadow roger && \
    apt update -y && \
    apt install -y openssh-server && \
    chmod +x /start.sh && \
    chmod +r /sshd_config && \
    echo "export PATH=$PATH" >> /home/$USER/.bashrc

EXPOSE 2222

USER $USER

CMD ["/start.sh"]

ENV IMAGE_TYPE=debugger
