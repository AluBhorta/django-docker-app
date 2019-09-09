FROM python:3.6.8
LABEL author="AluBhorta"

RUN apt update && \ 
  apt upgrade -y && \
  apt autoremove

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt
