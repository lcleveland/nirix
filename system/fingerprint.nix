{ config, lib, pkgs, ... }:
let
  fingerprint = config.nirix.system.fingerprint;
in
{
  config = {
    services.fprintd.enable = fingerprint.enable;
    systemd.services.fprintd = lib.mkIf fingerprint.enable {
      wantedBy = [ "multi-user.target" ];
      serviceConfig.Type = "simple";
    };
  };
}
