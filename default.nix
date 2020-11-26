{ pkgs ? import <nixpkgs-unstable> {} }:

{
  lib = import ./lib { inherit pkgs; };
  modules = import ./modules;
  overlays = import ./overlays;

  mon2cam = pkgs.callPackage ./pkgs/mon2cam { };
}

