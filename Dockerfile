FROM node:14.18.3-alpine3.14 as build

RUN mkdir -p /home/holyraven/Projects/javascript/express/nodeDocker/node_modules && chown -R node:node /home/holyraven/Projects/javascript/express/nodeDocker

WORKDIR /home/holyraven/Projects/javascript/express/nodeDocker

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 3000

CMD ["npm", "start"]