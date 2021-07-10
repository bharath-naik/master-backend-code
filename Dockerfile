FROM node:14-alpine

LABEL MAINTAINER Bharath Naik "bharath.vadithya@gmail.com"

ENV REFRESHED_AT 2021-07-07
ENV NODE_ENV=production

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install --production
# If you are building your code for production
#RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8000
CMD [ "node", "server.js" ]
