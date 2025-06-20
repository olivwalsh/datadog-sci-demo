FROM node:16

ARG DD_GIT_REPOSITORY_URL
ARG DD_GIT_COMMIT_SHA
ARG DD_TAGS
ENV DD_GIT_REPOSITORY_URL=${DD_GIT_REPOSITORY_URL}
ENV DD_GIT_COMMIT_SHA=${DD_GIT_COMMIT_SHA}
ENV DD_TAGS=${DD_TAGS}

# Create app directory
WORKDIR /usr/src/node-server

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
# Not the usual way to start on prod, but it produces stack traces on TS
CMD [ "npx", "ts-node", "server.ts" ]
