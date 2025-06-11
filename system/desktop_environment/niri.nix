{ config, lib, pkgs, ... }:
{
  config = {
    programs = {
      niri.enable = true;
    };
  };
}
