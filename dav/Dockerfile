FROM caddy:2-builder-alpine@sha256:523b0990e625ae1931ec492283a7275c6070b58c673bd9bab45f0bb0c2a81be1 AS builder
RUN xcaddy build --with github.com/mholt/caddy-webdav

FROM caddy:2-alpine@sha256:33937b9d51461ea87794350c1c09ce53f327802508929d78f3b5642533f2f7db
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile
