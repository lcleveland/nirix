{ config, lib, ... }:
let
  config_root = config.nirix.config_root;
  options_root = config.nirix.options_root;
in
{
  ${options_root}.desktop_environment.theme = {
    selected_theme = lib.mkOption {
      type = lib.types.enum [
        ${config_root}.colors.catppuccin.mocha.name
      ];
      default = ${config_root}.colors.catppuccin.mocha.name;
      description = ''
        The theme to use.
        '';
    };
  };
}
