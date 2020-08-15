{ stdenv, fetchFromGitHub, rustPlatform }:
{ owner, name, version, nativeBuildInputs ? [], cargoSha256 , cargoBuildFlags ? [] }:

let
  theVersion = version;
  theOwner = owner;
  theName = name;
  theNativeBuildInputs = nativeBuildInputs;
  theCargoSha256 = cargoSha256;
  theCargoBuildFlags = cargoBuildFlags;
in
  rustPlatform.buildRustPackage rec {
    pname = "cargo-${owner}-${name}";
    version = theVersion;

    src = ../../.;

    cargoSha256 = theCargoSha256;

    nativeBuildInputs = theNativeBuildInputs;

    cargoBuildFlags = theCargoBuildFlags;

    doCheck = false;

  }

