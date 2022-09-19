FROM node:alpine3.15

RUN sudo su && npm install -g json-server

RUN git clone https://github.com/devpolatto/db_mentesa_json-server mentesa

RUN mkdir /app
RUN cd /mentesa/
RUN copy mentesa/db.json /app

WORKDIR /app

RUN json-server --watch db.json

EXPOSE 80

