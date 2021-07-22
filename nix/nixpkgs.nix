(import (builtins.fetchTarball {
  name = "nixpkgs-unstable";
  url = "https://github.com/nixos/nixpkgs/archive/f259726f8a21a4ae6a4b3c1af82fc0cb89fb4a16.tar.gz";
  sha256 = "0hzdzd21xc3lfhv7xmp9bpxw971cxgibrj7p9camw6da690hkkn7";
}) {
  overlays = [
    (import ./tools.nix)
    (import ./customPackages.nix)
  ];
})
