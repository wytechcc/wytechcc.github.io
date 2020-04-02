FROM rust:1.42.0
RUN cargo install mdbook mdbook-linkcheck
COPY . /build
RUN useradd dev && chown -R dev /build
USER dev
WORKDIR /build
RUN make build
CMD mdbook serve -n 0.0.0.0
