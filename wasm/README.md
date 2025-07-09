# Sumzle Solver with WebAssembly

This project is a rewrite of the JavaScript calculation and solving module for Sumzle using Rust and WebAssembly (WASM).

## Prerequisites

Before you can build and run this project, you need to have the following installed:

1. [Rust](https://www.rust-lang.org/tools/install) - The Rust programming language
2. [wasm-pack](https://rustwasm.github.io/wasm-pack/installer/) - A tool for building Rust-generated WebAssembly packages

To install wasm-pack, run:

```bash
curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
```

## Building the Project

To build the WebAssembly module, run:

```bash
./build.sh
```

This will compile the Rust code to WebAssembly and generate the necessary JavaScript bindings in the `dist` directory.

## Running the Application

After building the project, you can open the `sumzleAK_wasm.html` file in a web browser to use the application.

Note: Due to browser security restrictions, you may need to serve the files from a local web server. You can use Python's built-in HTTP server:

```bash
python -m http.server
```

Then open `http://localhost:8000/sumzleAK_wasm.html` in your browser.

## Project Structure

- `src/lib.rs` - The Rust implementation of the calculation and solving module
- `Cargo.toml` - The Rust package configuration file
- `build.sh` - A script to build the WebAssembly module
- `sumzleAK_wasm.html` - The HTML file that integrates the WebAssembly module
- `sumzleAK.html` - The original HTML file with the JavaScript implementation

## Implementation Details

The Rust implementation provides the following functionality:

1. Expression evaluation - Evaluating mathematical expressions with support for:
   - Basic arithmetic operations (+, -, *, /, %, ^)
   - Factorial (!)
   - Permutation (A)
   - Floor brackets ([])

2. Expression validation - Checking if an expression is a valid solution

3. Search algorithm - Finding all valid expressions that satisfy the given constraints

4. Mathematical expression parser - Using the `meval` library to parse and evaluate mathematical expressions:
   - Supports all standard arithmetic operations
   - Handles complex expressions with nested parentheses
   - Integrates with custom preprocessing for special operations (factorial, permutation, floor brackets)
   - Provides detailed error messages for invalid expressions

The WebAssembly module is integrated with the HTML file to provide a seamless user experience while benefiting from the performance improvements of Rust and WebAssembly.
