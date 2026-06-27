FROM rust:slim@sha256:6abf73f05806f36362d0ff2722f2250c6153398831edd0455e0e0baa1f78ecc7

RUN cargo install mdbook mdbook-pandoc
RUN apt-get update && apt-get install -y \
    pandoc \
		texlive-full \
    && rm -rf /var/lib/apt/lists/*
COPY start-mdbook.sh .
COPY eisvogel/eisvogel.latex /root/eisvogel.latex
COPY eisvogel/eisvogel.latex /root/.local/share/pandoc/templates/default.latex

ENTRYPOINT [ "./start-mdbook.sh" ]
