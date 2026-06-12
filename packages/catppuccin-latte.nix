{ pkgs, fetchFromGitHub }:
let
  flavor = "catppuccin-latte";
in 
pkgs.stdenv.mkDerivation {
  pname = "yazi-flavor-${flavor}";
  version = "may-31";
  src = fetchFromGitHub {
    owner = "yazi-rs";
    repo = "flavors";
    rev = "0f9204bc948c8313963f5c9d571a82edc201f8aa";
    hash = "sha256-qWNArjWuxWL+rOjLzyIniW5hJgWiAWTCgXmMXJpaWZE=";
  };

  installPhase = ''
    mkdir -p $out
    cp $src/${flavor}.yazi/* $out/
  '';
}
