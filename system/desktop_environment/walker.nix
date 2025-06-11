{ config, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
in
{
  config = lib.mkIf desktop_environment.walker.enable {
    programs.walker = {
      enable = desktop_environment.walker.enable;
      runAsService = desktop_environment.walker.run_as_service;
    };
  };
}
