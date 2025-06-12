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
          style = ''
            * {
    border: none;
    border-radius: 0;
    font-family: "Ubuntu Nerd Font";
    font-size: 13px;
    min-height: 0;
}

window#waybar {
    background: transparent;
    color: white;
}

#window {
    font-weight: bold;
    font-family: "Ubuntu";
}
/*
#workspaces {
    padding: 0 5px;
}
*/

#workspaces button {
    padding: 0 5px;
    background: transparent;
    color: white;
    border-top: 2px solid transparent;
}

#workspaces button.focused {
    color: #c9545d;
    border-top: 2px solid #c9545d;
}

#mode {
    background: #64727D;
    border-bottom: 3px solid white;
}

#clock, #battery, #cpu, #memory, #network, #pulseaudio, #custom-spotify, #tray, #mode {
    padding: 0 3px;
    margin: 0 2px;
}

#clock {
    font-weight: bold;
}

#battery {
}

#battery icon {
    color: red;
}

#battery.charging {
}

@keyframes blink {
    to {
        background-color: #ffffff;
        color: black;
    }
}

#battery.warning:not(.charging) {
    color: white;
    animation-name: blink;
    animation-duration: 0.5s;
    animation-timing-function: linear;
    animation-iteration-count: infinite;
    animation-direction: alternate;
}

#cpu {
}

#memory {
}

#network {
}

#network.disconnected {
    background: #f53c3c;
}

#pulseaudio {
}

#pulseaudio.muted {
}

#custom-spotify {
    color: rgb(102, 220, 105);
}

#tray {
}


          '';
        };
      }
    ];
  };
}
