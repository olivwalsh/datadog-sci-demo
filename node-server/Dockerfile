FROM node:16

# APM Telemetry Tagging - Git metadata build arguments
ARG DD_GIT_REPOSITORY_URL
ARG DD_GIT_COMMIT_SHA
ENV DD_GIT_REPOSITORY_URL=${DD_GIT_REPOSITORY_URL}
ENV DD_GIT_COMMIT_SHA=${DD_GIT_COMMIT_SHA}

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

# APM Telemetry Tagging - Copy Git metadata for build context
COPY ../.git/HEAD ../.git/HEAD
COPY ../.git/refs ../.git/refs

EXPOSE 8080
# APM Telemetry - Enable source maps for better stack traces
CMD [ "node", "--enable-source-maps", "-r", "ts-node/register", "server.ts" ]
