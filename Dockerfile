FROM docker.io/jekyll/builder:latest AS builder
RUN mkdir /tmp/build && \
    mkdir /srv/jekyll/.jekyll-cache /srv/jekyll/_site && \
    chmod -R 0777 /srv/jekyll /tmp/build && \
    jekyll build -d /tmp/build --future
FROM docker.io/bitnami/nginx:latest AS runner
COPY --from=builder /tmp/build/ /app/
EXPOSE 8080
