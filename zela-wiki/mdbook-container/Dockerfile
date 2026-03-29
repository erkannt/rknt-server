FROM rust:slim@sha256:1d0000a49fb62f4fde24455f49d59c6c088af46202d65d8f455b722f7263e8f8

RUN cargo install mdbook mdbook-pandoc
RUN apt-get update && apt-get install -y \
    pandoc \
		texlive-full \
    && rm -rf /var/lib/apt/lists/*
COPY start-mdbook.sh .
COPY eisvogel/eisvogel.latex /root/eisvogel.latex
COPY eisvogel/eisvogel.latex /root/.local/share/pandoc/templates/default.latex

ENTRYPOINT [ "./start-mdbook.sh" ]
