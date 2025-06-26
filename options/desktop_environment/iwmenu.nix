{ config, lib, ... }:
{
  options.nirix.system.desktop_environment.iwmenu = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable iwmenu";
    };
  };
}
