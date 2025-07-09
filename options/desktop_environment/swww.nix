{ config, lib, pkgs, ... }:
{
  options.nirix.system.desktop_environment.swww = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = ''
        		Enable swww wallpaper
                	'';
    };
  };
}
