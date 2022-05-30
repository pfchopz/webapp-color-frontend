FROM python:3.6-alpine

COPY . /opt/

EXPOSE 8080

WORKDIR /opt

RUN apt-get install curl
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "app.py"]