FROM quay.io/khomreha/go-simple:latest
RUN mkdir /app
WORKDIR /app
COPY hello.go .
RUN go build /app/hello.go
EXPOSE 8080
ENTRYPOINT ["/app/hello"]
