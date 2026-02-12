FROM caddy:builder-alpine@sha256:d315d063ae1b9f8d5768f9d6fa98d8f77365f49b4f2c28f8ddc991b29b0c2a8a AS builder
RUN xcaddy build --with github.com/mholt/caddy-webdav

FROM caddy:2-alpine@sha256:4c6e91c6ed0e2fa03efd5b44747b625fec79bc9cd06ac5235a779726618e530d
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile
