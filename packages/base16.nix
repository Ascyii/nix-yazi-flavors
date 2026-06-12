{ pkgs, fetchFromGitHub }:
let
  flavor = "base16";
in
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "feb-21";
  
  src = fetchFromGitHub {
    owner = "matt-dong-123";
    repo = "${flavor}.yazi";
    rev = "b02b7a80b59b9166b050a6a6dfd8769a81eab5e1";
    hash = "sha256-qfo2/GLS6+KaUI5r6qMt6rHLkBifi2WW3lqLtwkkK/c=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/* $out/
  '';
}
