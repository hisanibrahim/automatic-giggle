FROM node:16

# Create app directory
WORKDIR /app

# Installing dependencies
COPY ./server/package.json ./
COPY ./server/yarn.lock ./
RUN yarn

RUN yarn
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 41000
CMD [ "node", "server.js" ]