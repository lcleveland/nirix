{ config, home-manager, lib, pkgs, ... }:
{
  config = {
    fonts.packages = with pkgs; [
      font-awesome
    ];
  };
}
