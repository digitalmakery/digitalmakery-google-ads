FROM rust:slim-bookworm AS builder
RUN cargo install mcp-google-ads

FROM ubuntu:26.04
RUN apt-get update && apt-get install --no-install-recommends -y ca-certificates && rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/local/cargo/bin/mcp-google-ads /usr/local/bin/mcp-google-ads
ENTRYPOINT ["mcp-google-ads"]
