FROM node:lts-alpine
ENV YARN_VERSION=3.2.1
RUN npm install -g http-server
WORKDIR /app

COPY . .
RUN yarn install
RUN yarn run build

EXPOSE 8080
CMD [ "http-server", "dist" ]