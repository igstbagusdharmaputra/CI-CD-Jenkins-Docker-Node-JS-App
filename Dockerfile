FROM node AS stage1

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean

RUN mkdir /app
WORKDIR /app

COPY package*.json ./

FROM stage1 AS stage2

RUN npm install

FROM gcr.io/distroless/nodejs

COPY --from=stage2 /app/node_modules ./node_modules

COPY . .

EXPOSE 3000

CMD [ "npm","start" ]
