{ config, inputs, lib, pkgs, ... }:
let
  niri = config.nirix.system.desktop_environment.niri;
  inherit (inputs.niri.lib.kdl) node plain leaf flag;
in
{
  config = lib.mkIf niri.enable {
    programs = {
      niri.enable = true;
    };
    home-manager.sharedModules = [
      {
        programs.niri.config = [
          (plain "input" [
            (plain "keyboard" [
              (plain "xkb" [

              ])
            ])
          ])
        ];
      }
    ];
  };
}

