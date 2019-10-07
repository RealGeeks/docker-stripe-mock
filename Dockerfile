FROM golang:1.12.10-alpine3.10

WORKDIR /code

RUN apk add --update --no-cache git
RUN GO111MODULE=on go get -v -u github.com/stripe/stripe-mock@v0.67.0

ENTRYPOINT ["stripe-mock"]

EXPOSE 12111
