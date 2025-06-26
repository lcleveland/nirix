{ config, lib, pkgs, ... }:
let
  time = config.nirix.config_root.time;
in
{
  config = {
    time.timeZone = time.time_zone;
  };
}
