{ config, inputs, lib, pkgs, ... }:
let
  niri = config.nirix.system.desktop_environment.niri;
  settings = config.nirix.system;
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
                (leaf "layout" settings.keyboard.layout)
                (leaf "variant" settings.keyboard.variant)
              ])
            ])
          ])
        ];
      }
    ];
  };
}

