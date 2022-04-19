FROM python:3.7-alpine
MAINTAINER Pedro Coimbra

# Essa variável serve para que o python printe os outputs
# diretamente ser dara buffer neles
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app  /app

RUN adduser -D  user
USER user
