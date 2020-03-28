FROM node:alpine

COPY data.json /

RUN npm install -g json-server

EXPOSE 3000

ENTRYPOINT [ "node", "/usr/local/bin/json-server", "--host", "0.0.0.0", "--watch", "/data.json" ]