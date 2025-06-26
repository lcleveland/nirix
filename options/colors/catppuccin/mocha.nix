{ config, lib, ... }:
{
  ${config.nirix.options_root}.colors.catppuccin.mocha = {
    name = lib.mkOption {
      type = lib.types.str;
      default = "catppuccin_mocha";
      description = ''
        '';
    };
    rosewater = lib.mkOption {
      type = lib.types.str;
      default = "#f5e0dc";
      description = ''
'';
    };
    flamingo = lib.mkOption {
      type = lib.types.str;
      default = "#f2cdcd";
      description = ''
'';
    };
    pink = lib.mkOption {
      type = lib.types.str;
      default = "#f5c2e7";
      description = ''
'';
    };
    mauve = lib.mkOption {
      type = lib.types.str;
      default = "#cba6f7";
      description = ''
'';
    };
    red = lib.mkOption {
      type = lib.types.str;
      default = "#f38ba8";
      description = ''
'';
    };
    maroon = lib.mkOption {
      type = lib.types.str;
      default = "#eba0ac";
      description = ''
'';
    };
    peach = lib.mkOption {
      type = lib.types.str;
      default = "#fab387";
      description = ''
'';
    };
    yellow = lib.mkOption {
      type = lib.types.str;
      default = "#f9e2af";
      description = ''
'';
    };
    green = lib.mkOption {
      type = lib.types.str;
      default = "#a6e3a1";
      description = ''
'';
    };
    teal = lib.mkOption {
      type = lib.types.str;
      default = "#94e2d5";
      description = ''
'';
    };
    sky = lib.mkOption {
      type = lib.types.str;
      default = "#89dceb";
      description = ''
'';
    };
    sapphire = lib.mkOption {
      type = lib.types.str;
      default = "#74c7ec";
      description = ''
'';
    };
    blue = lib.mkOption {
      type = lib.types.str;
      default = "#89b4fa";
      description = ''
'';
    };
    lavender = lib.mkOption {
      type = lib.types.str;
      default = "#b4befe";
      description = ''
'';
    };
    text = lib.mkOption {
      type = lib.types.str;
      default = "#cdd6f4";
      description = ''
'';
    };
    subtext_1 = lib.mkOption {
      type = lib.types.str;
      default = "#bac2de";
      description = ''
'';
    };
    subtext_0 = lib.mkOption {
      type = lib.types.str;
      default = "#a6adc8";
      description = ''
'';
    };
    overlay_2 = lib.mkOption {
      type = lib.types.str;
      default = "#9399b2";
      description = ''
'';
    };
    overlay_1 = lib.mkOption {
      type = lib.types.str;
      default = "#7f849c";
      description = ''
                '';
    };
    overlay_0 = lib.mkOption {
      type = lib.types.str;
      default = "#6c7086";
      description = ''
                '';
    };
    surface_2 = lib.mkOption {
      type = lib.types.str;
      default = "#585b70";
      description = ''
'';
    };
    surface_1 = lib.mkOption {
      type = lib.types.str;
      default = "#45475a";
      description = ''
'';
    };
    surface_0 = lib.mkOption {
      type = lib.types.str;
      default = "#313244";
      description = ''
                '';
    };
    base = lib.mkOption {
      type = lib.types.str;
      default = "#1e1e2e";
      description = ''
'';
    };
    mantle = lib.mkOption {
      type = lib.types.str;
      default = "#181825";
      description = ''
'';
    };
    crust = lib.mkOption {
      type = lib.types.str;
      default = "#11111b";
      description = ''
'';
    };
  };
}
