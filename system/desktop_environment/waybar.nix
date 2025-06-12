{ config, home-manager, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
in
{
  config = lib.mkIf desktop_environment.waybar.enable {
    home-manager.sharedModules = [
      {
        programs.waybar = {
          enable = desktop_environment.waybar.enable;
          settings = {
            mainBar = {
              layer = "top";
              position = "top";
              height = 24;
              modules-right = [ "pulseaudio" "network" "cpu" "memory" "battery" "tray" "clock" ];
              "tray" = {
                spacing = 10;
              };
              "cpu" = {
                format = "{usage}% ";
              };
              "memory" = {
                format = "{}% ";
              };
              "battery" = {
                bat = "BAT0";
                adapter = "AC";
                states = {
                  good = 85;
                  warning = 30;
                  critical = 15;
                };
                format = "{capacity}% {icon}";
                format-icons = [ "" "" "" "" "" ];
              };
              "network" = {
                format-wifi = "{essid} ({signalStrength}%) ";
                format-ethernet = "{ifname}: {ipaddr}/{cidr} ";
                format-disconnected = "Disconnected ⚠";
              };
              "pulseaudio" = {
                format = "{volume}% {icon}";
                format-bluetooth = "{volume}% {icon}";
                format-muted = "";
                format-icons = {
                  headphones = "";
                  hands-free = "";
                  headset = "";
                  phone = "";
                  portable = "";
                  car = "";
                  default = [ "" ];
                };
              };
            };
          };
          style = builtins.readFile ../../resources/waybar/style.css;
        };
      }
    ];
  };
}
