{ config, lib, pkgs, ... }:
let
  cpu = config.nirix.system.cpu;
in
{
  config = {
    hardware.cpu.${cpu.vendor}.updateMicrocode = cpu.microcode.enable;
  };
}
