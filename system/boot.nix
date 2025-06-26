{ config, lib, pkgs, ... }:
let
  boot = ${config.nirix.config_root}.boot;
in
{
  config = {
    boot = {
      kernelPackages = boot.kernel.kernel_package;
      loader = {
        efi.canTouchEfiVariables = boot.loader.efi.can_touch_efi_vars;
        systemd-boot.enable = boot.loader.systemd.enable;
      };
    };
  };
}
