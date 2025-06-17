FROM golang:1.23-alpine

# Install git to access repository information
RUN apk add --no-cache git

# Build argument to pass git commit SHA
ARG DD_GIT_COMMIT_SHA
ARG DD_GIT_REPOSITORY_URL=https://github.com/olivwalsh/datadog-sci-demo

WORKDIR /usr/src/app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o client

# Set Datadog Git environment variables
ENV DD_GIT_COMMIT_SHA=${DD_GIT_COMMIT_SHA}
ENV DD_GIT_REPOSITORY_URL=${DD_GIT_REPOSITORY_URL}

CMD [ "/usr/src/app/client" ]