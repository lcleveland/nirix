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
    colors = {
      compositor_background = lib.mkOption {
        type = lib.types.str;
        default = config.nirix.system.colors.catppuccin.mocha.base;
        description = ''
          The background color of the compositor.
        '';
      };
      overview_background = lib.mkOption {
        type = lib.types.str;
        default = config.nirix.system.colors.catppuccin.mocha.crust;
        description = ''
          The background color of the overview.
        '';
      };
    };
  };
}
