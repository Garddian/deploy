FROM node:22-alpine
# Installing libvips-dev for sharp Compatibility
RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev git curl
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
ENV HOST=0.0.0.0
ENV PORT=1337

WORKDIR /opt/
COPY ./ael-api/package.json ./ael-api/package-lock.json ./
RUN chown -R node:node ./
RUN npm install -g node-gyp
RUN npm config set fetch-retry-maxtimeout 600000 -g && npm install
ENV PATH=/opt/node_modules/.bin:$PATH

WORKDIR /opt/app
COPY ./ael-api .
RUN chown -R node:node /opt/app
USER node
EXPOSE 1337
RUN ["npm", "run", "build"]
CMD ["npm", "run", "develop"]