{ config, lib, pkgs, ... }:
let
  time = config.nirix.system.time;
in
{
  config = {
    time.timeZone = time.time_zone;
  };
}
