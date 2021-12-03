FROM python:3.6-alpine

LABEL version="1.0" maintainer="Mayas AIT ELHADJ <mayas.aitelhadj@ynov.com>"

ADD ./app.py /opt
WORKDIR /opt

RUN pip install flask

EXPOSE 8080

ENV ODOO_URL=local.odoo
ENV PGADMIN_URL=local.pgadmin

ENTRYPOINT [ "python", "./app.py" ]