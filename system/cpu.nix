{ config, lib, pkgs, ... }:
let
  cpu = ${config.nirix.config_root}.cpu;
in
{
  config = {
    hardware.cpu.${cpu.vendor}.updateMicrocode = cpu.microcode.enable;
  };
}
