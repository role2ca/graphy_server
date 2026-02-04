FROM node:20-alpine
WORKDIR /app
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install
EXPOSE 4000
CMD ["node", "graphserver.js"]
