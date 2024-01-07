# syntax=docker/dockerfile:1.4

FROM docker.io/jekyll/builder:latest AS builder
RUN jekyll build

FROM docker.io/bitnami/nginx:latest AS runner
COPY --from=builder /tmp/build /app/

EXPOSE 8080

