{ pkgs ? import <nixpkgs> {} }:

rec {
  lib = import ./lib { inherit pkgs; };
  modules = import ./modules;
  overlays = import ./overlays;

  mon2cam = pkgs.callPackage ./pkgs/mon2cam { inherit deno; };
  deno = pkgs.callPackage ./pkgs/deno { };
}

