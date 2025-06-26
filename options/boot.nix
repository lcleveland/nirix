{ config, lib, pkgs, ... }:
{
  options.nirix.system.boot = {
    loader = {
      efi.can_touch_efi_vars = lib.mkOption {
        type = lib.types.bool;
        default = true;
        description = ''
          				Whether the EFI variables can be modified by the kernel.
          			'';
      };
      kernel.kernel_package = lib.mkOption {
        type = lib.types.attrs;
        default = pkgs.linuxPackages_latest;
        description = ''
            					The kernel package to use.
            				'';
      };
      systemd.enable = lib.mkOption {
        type = lib.types.bool;
        default = true;
        description = ''
            				Whether to enable the systemd boot service.
            			'';
      };
    };
  };
}
