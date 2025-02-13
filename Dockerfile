# syntax=docker/dockerfile:1.2

FROM python:3.9-slim-buster

WORKDIR /usr/src

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY biopharm.py screener_results.csv .