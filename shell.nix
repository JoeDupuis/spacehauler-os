{ projectDir ? (toString ./.)
, pkgs ? import ./nix/nixpkgs.nix
}:
with pkgs; let
in mkShell ({
  buildInputs = [
    ruby_3_0
  ];
})
