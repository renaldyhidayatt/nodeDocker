FROM node:lts-buster

RUN mkdir -p /home/server/nodeDocker/node_modules && chown -R node:node /home/server/nodeDocker

WORKDIR /home/server/nodeDocker

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD ["npm", "start"]