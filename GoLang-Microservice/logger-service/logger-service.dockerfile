# base go image
#FROM golang:1.18-alpine as builder

#RUN mkdir /app

#COPY . /app

#WORKDIR /app

#RUN CGO_ENABLED=0 go build -o brokerApp ./cmd/api

#RUN chmod +x /app/brokerApp

#build a tint docker image

#Make file will do the job for building the broker

FROM alpine:latest

RUN mkdir /app

#COPY --from=builder /app/brokerApp /app

COPY loggerServiceApp /app

CMD ["/app/loggerServiceApp"]