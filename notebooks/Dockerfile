ARG VERSION
ARG EXTENSION
FROM nvcr.io/nvidia/$EXTENSION:$VERSION

EXPOSE 8888

ENV USER=jovyan \
    UID=10000 \
    GID=users


RUN useradd -l -m -s /bin/bash -N -u $UID -g $GID $USER && \
    pip install ipywidgets

WORKDIR /home/$USER

USER $USER

RUN jupyter notebook --generate-config && \
    echo "c.NotebookApp.notebook_dir = '/home/$USER/'" >> /home/$USER/.jupyter/jupyter_notebook_config.py

CMD ["jupyter","notebook","--ip","0.0.0.0"]

