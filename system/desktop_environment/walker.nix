{ config, inputs, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
  nix = config.nirix.system.nix;
in
{
  imports = [
    inputs.walker.${nix.host_platform}.default
  ];
  programs.walker = {
    enable = desktop_environment.walker.enable;
    runAsService = desktop_environment.walker.run_as_service;
  };
}
