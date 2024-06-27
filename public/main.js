import init, { greet } from "./pkg/hello_wasm.js";

let wasmReady = false;

const form = document.querySelector("form#name-form");
form.onsubmit = () => {
  const name = form.querySelector("input#name").value;
  if (!wasmReady) {
    alert("Wasm module not yet loaded");
    return;
  }
  let s = greet(name);
  alert(s + " -- from JS!");
};

init().then(() => {
  wasmReady = true;
});
