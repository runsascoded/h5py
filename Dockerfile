FROM python:3.7-slim
RUN pip install h5py==2.10.0 numpy==1.19.2
WORKDIR /
COPY segfault.py /
ENTRYPOINT [ "python3", "-X", "-q", "segfault.py" ]
