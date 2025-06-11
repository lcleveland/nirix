{ inputs, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
  nix = config.nirix.system.nix;
in
{
  imports = [
    inputs.walker.${nix.host_platform}.default
  ];
  config = lib.mkIf desktop_environment.walker.enable {
    programs.walker = {
      enable = true;
      runAsService = desktop_environment.walker.run_as_service;
    };
  };
}
