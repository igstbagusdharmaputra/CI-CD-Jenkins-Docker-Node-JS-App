FROM node:alpine
RUN mkdir app-nodejs
ADD . /app-nodejs
WORKDIR /app-nodejs
RUN npm install
EXPOSE 3000
CMD ["node","server.js"]
