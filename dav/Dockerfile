FROM caddy:2-builder-alpine@sha256:c7b4d7372becf00ffbb2862572f203e7e7e202f456545563ce3f41e5d561ef36 AS builder
RUN xcaddy build --with github.com/mholt/caddy-webdav

FROM caddy:2-alpine@sha256:33937b9d51461ea87794350c1c09ce53f327802508929d78f3b5642533f2f7db
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile
