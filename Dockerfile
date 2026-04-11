FROM alpine:edge


RUN apk add --no-cache micropython \
    --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community


WORKDIR /app


COPY mapper_reducer.py .


CMD ["micropython", "mapper_reducer.py"]