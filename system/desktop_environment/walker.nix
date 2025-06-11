{ config, inputs, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
  nix = config.nirix.system.nix;
in
{
  config = lib.mkIf desktop_environment.walker.enable {
    environment.systemPackages = [
      inputs.walker.packages.${pkgs.system}.default
    ];
    inputs.walker.programs.walker = {
      enable = true;
      runAsService = desktop_environment.walker.run_as_service;
    };
  };
}
