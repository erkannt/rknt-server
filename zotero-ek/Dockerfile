FROM caddy:builder-alpine@sha256:d315d063ae1b9f8d5768f9d6fa98d8f77365f49b4f2c28f8ddc991b29b0c2a8a AS builder
RUN xcaddy build --with github.com/mholt/caddy-webdav

FROM caddy:2-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile
