FROM node:latest
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
COPY . ./
EXPOSE 8081
CMD [ "npx", "http-server", "./", "-p8081" ]