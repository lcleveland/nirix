{ config, lib, pkgs, ... }:
let
  nix = config.nirix.system.nix;
in
{
  config = {
    nix = {
      gc = lib.mkIf nix.garbage_collection.enable {
        automatic = nix.garbage_collection.automatic;
        dates = nix.garbage_collection.dates;
        options = nix.garbage_collection.options;
      };
      settings = {
        auto-optimise-store = nix.store_optimization.enable;
        experimental-features = lib.mkIf nix.flake.enable "nix-command flakes";
      };
    };
  };
}
