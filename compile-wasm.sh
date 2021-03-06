#!/bin/sh

# script provided for convenience, to build and extract wasm output to root

RUSTFLAGS='-C link-arg=-s' \
cargo build --bin busd --target=wasm32-unknown-unknown --release
mkdir -p output
mv target/wasm32-unknown-unknown/release/busd.wasm output/busd.wasm
# wasm-snip output/busd.wasm -o output/busd.wasm --snip-rust-fmt-code #--snip-rust-panicking-code
# wasm-gc busd.wasm
# twiggy top -n 20 output/busd.wasm
# twiggy top -n 300 busd.wasm > twiggy-snip.txt


# cargo +nightly rustc --bin busd -- -Z unstable-options --pretty=expanded > demacroed.rs

# cargo +nightly rustc --lib -- -Z unstable-options --pretty=expanded > demacroed.rs
