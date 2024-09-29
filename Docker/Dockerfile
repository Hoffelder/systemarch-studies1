FROM golang:1.20 AS builder

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GO build -o my-app . 

FROM alpine:latest

COPY --from=builder /app/my-app /usr/local/bin/my-app

EXPOSE 8080

CMD ["my-app"]