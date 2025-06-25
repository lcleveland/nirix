{ config, lib, ... }:
{
  ${config.nirix.options_root}.desktop_environment = {
    theme = {
      type = lib.types.enum [ "catppuccin_mocha" ];
      default = "catppuccin_mocha";
      description = ''
        		The theme to use for the desktop environment.
        	'';
    };
  };
}
