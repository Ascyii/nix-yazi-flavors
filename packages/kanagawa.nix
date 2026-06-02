{ pkgs, fetchFromGitHub }:
let
  flavor = "kanagawa";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "jan-02";
  src = fetchFromGitHub {
    owner = "dangooddd";
    repo = "${flavor}.yazi";
    rev = "04985d12842b06bdb3ad5f1b3d7abc631059b7f5";
    hash = "";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/* $out/
  '';
}
