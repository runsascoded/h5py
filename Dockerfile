ARG PYTHON=3.7
FROM python:${PYTHON}-slim

ARG H5PY=2.10.0
ARG NUMPY=1.19.2
RUN pip install h5py==${H5PY} numpy==${NUMPY}

WORKDIR /
COPY segfault.py /

ENTRYPOINT [ "python3", "-X", "-q", "segfault.py" ]
