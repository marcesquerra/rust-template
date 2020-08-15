{ packages, rustPlatform }:
with packages;

let

  rust = rustPlatform.rust;
  realRustPlatform = makeRustPlatform{
      cargo = rust;
      rustc = rust;
    };
in
(import ./getFromCargo.nix) {
  inherit stdenv fetchFromGitHub; rustPlatform = realRustPlatform;
}
