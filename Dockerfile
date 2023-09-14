FROM node:latest

 LABEL description="A demo Dockerfile for build Docsify."

 WORKDIR /docs

 RUN npm install -g docsify-cli@latest

 RUN npm install docsify-print

 EXPOSE 3000/tcp

 ENTRYPOINT docsify serve .
