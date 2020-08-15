{ stdenv, fetchFromGitHub, rustPlatform }:
{ name, nativeBuildInputs ? [], cargoSha256 , cargoBuildFlags ? [] }:

let
  theNativeBuildInputs = nativeBuildInputs;
  theCargoSha256 = cargoSha256;
  theCargoBuildFlags = cargoBuildFlags;
in
  rustPlatform.buildRustPackage rec {
    pname = "cargo-${name}";
    version = "latest";

    src = ../../.;

    cargoSha256 = theCargoSha256;

    nativeBuildInputs = theNativeBuildInputs;

    cargoBuildFlags = theCargoBuildFlags;

    doCheck = false;

  }

