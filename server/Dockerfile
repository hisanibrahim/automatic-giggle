FROM node:16

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json yarn.lock ./

RUN yarn

# Bundle app source
COPY . .

EXPOSE 41000
CMD [ "node", "server.js" ]