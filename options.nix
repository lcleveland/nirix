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
        cpu = {
          microcode.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
              Whether to enable microcode support.
            '';
          };
          vendor = lib.mkOption {
            type = lib.types.enum [ "amd" "intel" ];
            default = "amd";
            description = ''
              The CPU vendor to use.
            '';
          };
        };
        desktop_environment = {
          iwmenu = {
            enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
                Whether to enable iwmenu.
              '';
            };
          };
          ly = {
            enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
        Whether to enable Ly.
        '';
            };
          };
          niri = {
            enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
        Whether to enable Niri.
        '';
            };
            prefer_no_csd = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
        Whether to prefer no CSD.
      '';
            };
          };
          walker = {
            enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
                Whether to enable the Walker desktop environment.
              '';
            };
          };
          waybar.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
        Whether to enable Waybar.
        '';
          };
        };
        fingerprint.enable = lib.mkOption {
          type = lib.types.bool;
          default = true;
          description = ''
            Whether to enable fingerprint support.
          '';
        };
        framework.enable = lib.mkOption {
          type = lib.types.bool;
          default = false;
          description = ''
            Whether to enable Framework laptop support.
          '';
        };
        keyboard = {
          layout = lib.mkOption {
            type = lib.types.str;
            default = "us";
            description = ''
              The keyboard layout to use.
            '';
          };
          variant = lib.mkOption {
            type = lib.types.str;
            default = "";
            description = ''
              The keyboard variant to use.
            '';
          };
        };
        language.locale = lib.mkOption {
          type = lib.types.str;
          default = "en_US.UTF-8";
          description = ''
            The locale to use.
          '';
        };
        network = {
          hostname = lib.mkOption {
            type = lib.types.str;
            default = "nirix";
            description = ''
              The hostname to use.
            '';
          };
          network_manager.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
              Whether to enable the network manager.
            '';
          };
        };
        nix = {
          allow_unfree_software = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
              Whether to allow unfree software to be installed.
            '';
          };
          flake.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
        Whether to enable the Nix flake feature.
      '';
          };
          host_platform = lib.mkOption {
            type = lib.types.enum [ "x86_64-linux" ];
            default = "x86_64-linux";
            description = ''
        The host platform.
      '';
          };
          state_version = lib.mkOption {
            type = lib.types.str;
            default = "25.05";
            description = ''
        The state version.
      '';
          };
          store_optimization.enable = lib.mkOption {
            type = lib.types.bool;
            default = true;
            description = ''
        Whether to enable store optimization.
      '';
          };
          garbage_collection = {
            enable = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
          Whether to enable garbage collection.
        '';
            };
            automatic = lib.mkOption {
              type = lib.types.bool;
              default = true;
              description = ''
          Whether to enable automatic garbage collection.
        '';
            };
            dates = lib.mkOption {
              type = lib.types.str;
              default = "weekly";
              description = ''
          The dates to garbage collect.
        '';
            };
            options = lib.mkOption {
              type = lib.types.str;
              default = "--delete-older-than 7d";
              description = ''
          The options to pass to nix-store --optimize.
        '';
            };
          };
        };
        time.time_zone = lib.mkOption {
          type = lib.types.str;
          default = "America/Chicago";
          description = ''
            The time zone to use.
          '';
        };
      };
    };
  };
}
