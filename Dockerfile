FROM python:3.6-alpine

LABEL version="1.0" maintainer="Mayas AIT ELHADJ <mayas.aitelhadj@ynov.com>"

COPY ./webapp /opt/
COPY ./app.py /opt/app.py

WORKDIR /opt

RUN pip install flask

EXPOSE 8080

ENV ODOO_URL=http://local.odoo.com
ENV PGADMIN_URL=http://local.pgadmin.com

ENTRYPOINT [ "python", "./app.py" ]
