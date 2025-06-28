{ config, lib, ... }:
{
  options.nirix.system.desktop_environment.bzmenu = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable bzmenu";
    };
  };
}
