{ config, lib, pkgs, ... }:
let
  libvirt = ${config.nirix.config_root}.applications.libvirt;
in
{
  config = lib.mkIf libvirt.enable {
    boot.extraModprobeConfig = "options kvm_intel nested=1";
    programs.virt-manager.enable = libvirt.enable;
    environment.systemPackages = with pkgs; [
      (virt-manager.overrideAttrs (old: {
        nativeBuildInputs = old.nativeBuildInputs ++ [ wrapGAppsHook ];
        buildInputs = lib.lists.subtractLists [ wrapGAppsHook ] old.buildInputs ++ [
          gst_all_1.gst-plugins-base
          gst_all_1.gst-plugins-good
        ];
      }))
    ];
    virtualisation.libvirtd = {
      enable = libvirt.enable;
      qemu = {
        package = pkgs.qemu_kvm;
        runAsRoot = true;
        swtpm.enable = true;
        ovmf = {
          enable = true;
          packages = [
            (pkgs.OVMF.override {
              secureBoot = true;
              tpmSupport = true;
            }).fd
          ];
        };
      };
    };
  };
}
