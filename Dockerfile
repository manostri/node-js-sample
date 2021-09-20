# syntax=docker/dockerfile:1
FROM node:12.18.1
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm ci
COPY . .
CMD [ "npm", "start" ]