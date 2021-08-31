FROM node:14-aline

RUN mkdir -p /usr/src/app

RUN apk --no-cache add curl

WORKDIR /usr/src/app

COPY . .

RUN npm ci

EXPOSE 3000

CMD ["npm", "run", "start"]
