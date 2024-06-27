#!/bin/bash
set -euo pipefail

wasm-pack build --target web --out-dir public/pkg
cp index.html public/
# Can't gitignore anything you want JamesIves/github-pages-deploy-action to publish.
rm public/pkg/.gitignore
