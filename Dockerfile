FROM node:hydrogen-bookworm-slim
WORKDIR /app
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN apt-get update && \
    apt-get upgrade -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    npm install
EXPOSE 4000
CMD ["node", "graphserver.js"]
