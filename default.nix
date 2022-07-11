{ pkgs ? import <nixpkgs> {} }:

{
  coq-hott_8_10 = let cpkgs = pkgs.coqPackages_8_10; in cpkgs.callPackage ./pkg.nix { };
  coq-hott_8_11 = let cpkgs = pkgs.coqPackages_8_11; in cpkgs.callPackage ./pkg.nix { };
  coq-hott_8_12 = let cpkgs = pkgs.coqPackages_8_12; in cpkgs.callPackage ./pkg.nix { };
  coq-hott_8_13 = let cpkgs = pkgs.coqPackages_8_13; in cpkgs.callPackage ./pkg.nix { };
  coq-hott_8_14 = let cpkgs = pkgs.coqPackages_8_14; in cpkgs.callPackage ./pkg.nix { };
  coq-hott_8_15 = let cpkgs = pkgs.coqPackages_8_15; in cpkgs.callPackage ./pkg.nix { };
  coq-hott      = let cpkgs = pkgs.coqPackages;      in cpkgs.callPackage ./pkg.nix { };
}
