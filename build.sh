#!/bin/bash
set -euo pipefail

wasm-pack build --target web --out-dir public/pkg
cp index.html public/
