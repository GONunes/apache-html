FROM ubuntu:latest
WORKDIR /app
RUN apt-get update -y
RUN apt-get install nodejs -y && apt-get install npm -yq
COPY build ./build
ENV NODE_OPTS ""
ENTRYPOINT npm start ./build $NODE_OPTS
