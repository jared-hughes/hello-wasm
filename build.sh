#!/bin/bash
set -euo pipefail

if [ -d public-deploy ]; then
    rm -rf public-deploy;
fi

wasm-pack build --target web --out-dir public-deploy/pkg
rsync -a public/ public-deploy/
# Can't gitignore anything you want JamesIves/github-pages-deploy-action to publish.
rm public-deploy/pkg/.gitignore
