FROM node:16-alpine
ARG NPM_REGISTRY=https://registry.npmjs.org
RUN npm config set registry ${NPM_REGISTRY}
WORKDIR /app
COPY . /app
RUN npm install
RUN npm run build-dev
EXPOSE 5000
CMD  ["npm", "start"]