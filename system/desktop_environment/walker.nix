{ config, inputs, lib, pkgs, ... }:
let
  walker = config.nirix.system.desktop_environment.walker;
  nix = config.nirix.config_root.nix;
in
{
  config = lib.mkIf walker.enable {
    environment.systemPackages = [ inputs.walker.packages.${nix.host_platform}.default ];
    programs.walker = {
      enable = walker.enable;
    };
  };
}
