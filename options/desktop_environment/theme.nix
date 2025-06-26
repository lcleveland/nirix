{ config, lib, ... }:
{
  options.nirix.system.desktop_environment.theme = {
    selected_theme = lib.mkOption {
      type = lib.types.enum [
        config.niri.system.colors.catppuccin.mocha.name
      ];
      default = config.niri.system.colors.catppuccin.mocha.name;
      description = ''
        The theme to use.
        '';
    };
  };
}
