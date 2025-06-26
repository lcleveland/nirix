{ config, lib, pkgs, ... }:
let
  qemu = config.nirix.config_root.applications.qemu;
in
{
  config = lib.mkIf qemu.enable {
    environment.systemPackages = [
      pkgs.qemu_full
      (pkgs.writeShellScriptBin "qemu-system-x86_64-uefi" ''
          qemu-system-x86_64 \
            -bios ${pkgs.OVMF.fd}/FV/OVMF.fd \
            "$@"
        '')
    ];
  };
}
