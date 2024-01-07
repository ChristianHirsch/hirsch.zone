FROM docker.io/jekyll/builder:latest AS builder
WORKDIR /srv/jekyll
COPY . .
RUN mkdir /tmp/build && \
    mkdir /srv/jekyll/.jekyll-cache /srv/jekyll/_site && \
    chmod -R 0777 /srv/jekyll /tmp/build && \
    pwd && find . && \
    jekyll build -d /tmp/build --future
FROM docker.io/bitnami/nginx:latest AS runner
COPY --from=builder /tmp/build/ /app/
EXPOSE 8080
