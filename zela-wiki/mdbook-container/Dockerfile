FROM rust:slim@sha256:cc0448b41c3b7b7fea44f5dc50eacba729a56db365b65b7bd5e8a82d5b3db078

RUN cargo install mdbook mdbook-pandoc
RUN apt-get update && apt-get install -y \
    pandoc \
		texlive-full \
    && rm -rf /var/lib/apt/lists/*
COPY start-mdbook.sh .
COPY eisvogel/eisvogel.latex /root/eisvogel.latex
COPY eisvogel/eisvogel.latex /root/.local/share/pandoc/templates/default.latex

ENTRYPOINT [ "./start-mdbook.sh" ]
