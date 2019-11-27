FROM python:3.7.5

RUN apt update
RUN apt install libsnmp-dev  -y

WORKDIR /code
COPY resetter.py .
COPY requirements.txt .

RUN pip install -r requirements.txt

ENTRYPOINT python resetter.py

