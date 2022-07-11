{
  description = "A formalization of homotopy type theory in Coq";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-22.05";
  };

  outputs = {self, nixpkgs}: let
    pkgs = import nixpkgs { system = "x86_64-linux"; };
    hott = import ./default.nix { inherit pkgs; };
  in {
    packages."x86_64-linux" = hott // {
      default = hott.coq-hott;
    };
    overlays.default = final: prev: hott;
  };
}
