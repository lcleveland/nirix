{ config, lib, pkgs, ... }:
{
  config = {
    environment.systemPackages = with pkgs; [
      libqalculate
    ];
  };
}
