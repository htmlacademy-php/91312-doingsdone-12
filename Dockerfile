FROM alpine
RUN apk add curl
ENTRYPOINT ["sh", "-c," "curl", "--version"]
