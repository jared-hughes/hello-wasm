## Building for web

Based on the guide from https://developer.mozilla.org/en-US/docs/WebAssembly/Rust_to_Wasm.

Dependency: `cargo install wasm-pack` (v0.12.1)

To build, run

```sh
wasm-pack build --target web
```

Then host the files, e.g.

```
python3 -m http.server
```

Open `index.html` on the server, and it should alert.
