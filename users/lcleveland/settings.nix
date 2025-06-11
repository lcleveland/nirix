{ config, home-manager, lib, pkgs, ... }:
let
  user = config.nirix.users.lcleveland.settings;
in
{
  config = lib.mkIf user.enable {
    home-manager.users.lcleveland = {
      home = {
        stateVersion = user.state_version;
        username = user.username;
      };
    };
    nirix.system.keyboard.variant = "colemak_dh";
    users.users.lcleveland = {
      description = user.name;
      extraGroups = user.groups;
      isNormalUser = user.is_normal_user;
      isSystemUser = !user.is_normal_user;
    };
  };
}
