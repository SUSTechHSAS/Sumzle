#!/bin/bash
set -e

# Build the WebAssembly module
wasm-pack build --target web

# Create the dist directory if it doesn't exist
mkdir -p dist

# Copy the generated files to the dist directory
cp pkg/sumzle_solver_bg.wasm dist/
cp pkg/sumzle_solver.js dist/

echo "Build completed successfully!"