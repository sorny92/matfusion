FROM nvidia/cuda:11.7.1-cudnn8-runtime-ubuntu20.04
ARG DEBIAN_FRONTEND=noninteractive
LABEL authors="esteve"

RUN apt update
RUN apt install python3.9-full python3-pip -y
RUN pip install poetry

COPY ./ /matfusion
WORKDIR /matfusion
RUN poetry install
RUN pip install jupyterlab


ENTRYPOINT ["bash"]