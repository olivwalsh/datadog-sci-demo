FROM golang:1.23-alpine

ARG DD_GIT_REPOSITORY_URL
ARG DD_GIT_COMMIT_SHA
ARG DD_TAGS
ENV DD_GIT_REPOSITORY_URL=${DD_GIT_REPOSITORY_URL}
ENV DD_GIT_COMMIT_SHA=${DD_GIT_COMMIT_SHA}
ENV DD_TAGS=${DD_TAGS}

WORKDIR /usr/src/app

COPY .git ./.git
COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o client

CMD [ "/usr/src/app/client" ]
