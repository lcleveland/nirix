{ config, home-manager, lib, pkgs, ... }:
{
  config = {
    fonts.packages = with pkgs; [
      fira-code
      fira-code-symbols
      fira-mono
      font-awesome
      nerd-fonts.fira-code
    ];
  };
}
