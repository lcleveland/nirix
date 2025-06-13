{ lib, pkgs, ... }:

{
  options = {
    nirix = {
      system = {
        account.mutable_users = lib.mkOption {
          type = lib.types.bool;
          default = true;
          description = ''
            Whether to allow users to be added to the system.
          '';
        };
        applications = {
          ghostty.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
              Whether to enable Ghostty.
            '';
          };
          git.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
              Whether to enable git.
            '';
          };
          libvirt.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
              Whether to enable libvirt.
            '';
          };
          qemu.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
              Whether to enable qemu.
            '';
          };
          zen.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
              Whether to enable Zen browser.
            '';
          };
        };
        bluetooth.enable = lib.mkOption {
          type = lib.types.bool;
          default = true;
          description = ''
            Whether to enable Bluetooth support.
          '';
        };
        boot = {
          loader = {
            efi.can_touch_efi_vars = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
                Whether to allow the EFI variables to be modified.
              '';
            };
            systemd.enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
                Whether to enable the systemd boot loader.
              '';
            };
          };
          kernel.kernel_package = lib.mkOption {
            type = lib.types.attrs;
            default = pkgs.linuxPackages_latest;
            description = ''
              The kernel package to use.
            '';
          };
        };
        colors = {
          catppuccin = {
            mocha = {
              rosewater = lib.mkOption {
                type = lib.types.str;
                default = "#f5e0dc";
                description = ''
'';
              };
              flamingo = lib.mkOption {
                type = lib.types.str;
                default = "#f2cdcd";
                description = ''
'';
              };
              pink = lib.mkOption {
                type = lib.types.str;
                default = "#f5c2e7";
                description = ''
'';
              };
              mauve = lib.mkOption {
                type = lib.types.str;
                default = "#cba6f7";
                description = ''
'';
              };
              red = lib.mkOption {
                type = lib.types.str;
                default = "#f38ba8";
                description = ''
'';
              };
              maroon = lib.mkOption {
                type = lib.types.str;
                default = "#eba0ac";
                description = ''
'';
              };
              peach = lib.mkOption {
                type = lib.types.str;
                default = "#fab387";
                description = ''
'';
              };
              yellow = lib.mkOption {
                type = lib.types.str;
                default = "#f9e2af";
                description = ''
'';
              };
              green = lib.mkOption {
                type = lib.types.str;
                default = "#a6e3a1";
                description = ''
'';
              };
              teal = lib.mkOption {
                type = lib.types.str;
                default = "#94e2d5";
                description = ''
'';
              };
              sky = lib.mkOption {
                type = lib.types.str;
                default = "#89dceb";
                description = ''
'';
              };
              sapphire = lib.mkOption {
                type = lib.types.str;
                default = "#74c7ec";
                description = ''
'';
              };
              blue = lib.mkOption {
                type = lib.types.str;
                default = "#89b4fa";
                description = ''
'';
              };
              lavender = lib.mkOption {
                type = lib.types.str;
                default = "#b4befe";
                description = ''
'';
              };
              text = lib.mkOption {
                type = lib.types.str;
                default = "#cdd6f4";
                description = ''
'';
              };
              subtext_1 = lib.mkOption {
                type = lib.types.str;
                default = "#bac2de";
                description = ''
'';
              };
              subtext_0 = lib.mkOption {
                type = lib.types.str;
                default = "#a6adc8";
                description = ''
'';
              };
              overlay_2 = lib.mkOption {
                type = lib.types.str;
                default = "#9399b2";
                description = ''
'';
              };
              overlay_1 = lib.mkOption {
                type = lib.types.str;
                default = "#7f849c";
                description = ''
                '';
              };
              overlay_0 = lib.mkOption {
                type = lib.types.str;
                default = "#6c7086";
                description = ''
                '';
              };
              surface_2 = lib.mkOption {
                type = lib.types.str;
                default = "#585b70";
                description = ''
'';
              };
              surface_1 = lib.mkOption {
                type = lib.types.str;
                default = "#45475a";
                description = ''
'';
              };
              surface_0 = lib.mkOption {
                type = lib.types.str;
                default = "#313244";
                description = ''
                '';
              };
              base = lib.mkOption {
                type = lib.types.str;
                default = "#1e1e2e";
                description = ''
'';
              };
              mantle = lib.mkOption {
                type = lib.types.str;
                default = "#181825";
                description = ''
'';
              };
              crust = lib.mkOption {
                type = lib.types.str;
                default = "#11111b";
                description = ''
'';
              };
            };
          };
        };
        cpu = {
          microcode.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
                  Whether
                  to
                  enable
                  microcode
                  support.'';
          };
          vendor = lib.mkOption {
            type = lib.types.enum [
              "amd"
              "intel"
            ];
            default = "amd";
            description = ''
                  The
                  CPU
                  vendor
                  to
                  use.'';
          };
        };
        desktop_environment = {
          hypridle = {
            enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
                  Whether
                  to
                  enable
                  Hypridle.'';
            };
          };
          hyprlock = {
            enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
                  Whether
                  to
                  enable
                  Hyprlock.'';
            };
          };
          iwmenu = {
            enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
                  Whether
                  to
                  enable
                  iwmenu.'';
            };
          };
          niri = {
            enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
                  Whether
                  to
                  enable
                  Niri.'';
            };
            prefer_no_csd = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
                  Whether
                  to
                  prefer
                  no
                  CSD.'';
            };
          };
          regreet = {
            enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
                  Whether
                  to
                  enable
                  the
                  Regreet
                  display
                  manager.'';
            };
          };
          walker = {
            enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
                  Whether
                  to
                  enable
                  the
                  Walker
                  desktop
                  environment.'';
            };
          };
          waybar.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
                  Whether
                  to
                  enable
                  Waybar.'';
          };
        };
        fingerprint.enable = lib.mkOption {
          type = lib.types.bool;
          default = true;
          description = ''
                  Whether
                  to
                  enable
                  fingerprint
                  support.'';
        };
        framework.enable = lib.mkOption {
          type = lib.types.bool;
          default = false;
          description = ''
                  Whether
                  to
                  enable
                  Framework
                  laptop
                  support.'';
        };
        keyboard = {
          layout = lib.mkOption {
            type = lib.types.str;
            default = "us";
            description = ''
                  The
                  keyboard
                  layout
                  to
                  use.'';
          };
          variant = lib.mkOption {
            type = lib.types.str;
            default = "";
            description = ''
                  The
                  keyboard
                  variant
                  to
                  use.'';
          };
        };
        language.locale = lib.mkOption {
          type = lib.types.str;
          default = "en_US.UTF-8";
          description = ''
                  The
                  locale
                  to
                  use.'';
        };
        network = {
          hostname = lib.mkOption {
            type = lib.types.str;
            default = "nirix";
            description = ''
                  The
                  hostname
                  to
                  use.'';
          };
          iwd.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
                  Whether
                  to
                  enable
                  the
                  iwd
                  daemon.'';
          };
          network_manager.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
                  Whether
                  to
                  enable
                  the
                  network
                  manager.'';
          };
        };
        nix = {
          allow_unfree_software = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
                  Whether
                  to
                  allow
                  unfree
                  software
                  to
                  be
                  installed.'';
          };
          flake.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
                  Whether
                  to
                  enable
                  the
                  Nix
                  flake
                  feature.'';
          };
          host_platform = lib.mkOption {
            type = lib.types.enum [
              "x86_64-linux"
            ];
            default = "x86_64-linux";
            description = ''
                  The
                  host
                  platform.'';
          };
          state_version = lib.mkOption {
            type = lib.types.str;
            default = "25.05";
            description = ''
                  The
                  state
                  version.'';
          };
          store_optimization.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
                  Whether
                  to
                  enable
                  store
                  optimization.'';
          };
          garbage_collection = {
            enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
                  Whether
                  to
                  enable
                  garbage
                  collection.'';
            };
            automatic = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
                  Whether
                  to
                  enable
                  automatic
                  garbage
                  collection.'';
            };
            dates = lib.mkOption {
              type = lib.types.str;
              default = "weekly";
              description = ''
                  The
                  dates
                  to
                  garbage
                  collect.'';
            };
            options = lib.mkOption {
              type = lib.types.str;
              default = "--delete-older-than 7d";
              description = ''
                  The
                  options
                  to
                  pass
                  to
                  nix-store - -optimize.'';
            };
          };
        };
        time.time_zone = lib.mkOption {
          type = lib.types.str;
          default = "America/Chicago";
          description = ''
                  The
                  time
                  zone
                  to
                  use.'';
        };
      };
    };
  };
}


