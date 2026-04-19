FROM rust:slim@sha256:319f354c6f068b01c19292555033a0e6133b4249a893c479aec3b0b8ab2f660a

RUN cargo install mdbook mdbook-pandoc
RUN apt-get update && apt-get install -y \
    pandoc \
		texlive-full \
    && rm -rf /var/lib/apt/lists/*
COPY start-mdbook.sh .
COPY eisvogel/eisvogel.latex /root/eisvogel.latex
COPY eisvogel/eisvogel.latex /root/.local/share/pandoc/templates/default.latex

ENTRYPOINT [ "./start-mdbook.sh" ]
