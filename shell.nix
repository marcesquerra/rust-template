{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.llvm
    pkgs.libunwind

    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}
