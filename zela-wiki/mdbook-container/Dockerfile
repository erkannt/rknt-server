FROM rust:slim@sha256:70d3b1a5e21806b8615c3fb2a59abea6e931aa29bf93f0a9d9c46e743beae096

RUN cargo install mdbook mdbook-pandoc
RUN apt-get update && apt-get install -y \
    pandoc \
		texlive-full \
    && rm -rf /var/lib/apt/lists/*
COPY start-mdbook.sh .
COPY eisvogel/eisvogel.latex /root/eisvogel.latex
COPY eisvogel/eisvogel.latex /root/.local/share/pandoc/templates/default.latex

ENTRYPOINT [ "./start-mdbook.sh" ]
