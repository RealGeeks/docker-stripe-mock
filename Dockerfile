FROM golang:alpine

RUN apk add --update --no-cache git

RUN go get -v -u github.com/stripe/stripe-mock

ENTRYPOINT ["stripe-mock"]

EXPOSE 12111
