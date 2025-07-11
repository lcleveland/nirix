{
  description = "Nirix: A minimal, keyboard-centric NixOS configuration using the Niri TWM";

  outputs = { self, bzmenu, home_manager, iwmenu, niri, nirix_users, nixos_hardware, nixpkgs, walker, swww, zen_browser, ... }@core_inputs:
    let
      inputs = core_inputs // nirix_users.inputs;
      import_modules = import ./resources/nix/import_modules.nix;
      core_modules =
        [
          home_manager.nixosModules.home-manager
          niri.nixosModules.niri
          walker.nixosModules.default
          /etc/nixos/hardware-configuration.nix
        ] ++
        (import_modules ./options) ++
        (import_modules ./system) ++
        nirix_users.nixosModules.default;
      make_framework_16 = nixpkgs.lib.nixosSystem {
        modules = core_modules ++ [ nixos_hardware.nixosModules.framework-16-7040-amd ];
        specialArgs = { inherit inputs; };
      };
    in
    {
      nixosConfigurations = {
        fw16 = make_framework_16;
      };
    };

  inputs = {
    bzmenu = {
      url = "github:e-tho/bzmenu";
    };
    home_manager = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/home-manager?ref=release-25.05";
    };
    iwmenu = {
      url = "github:e-tho/iwmenu";
    };
    niri = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:sodiboo/niri-flake";
    };
    nirix_users = {
      url = "github:lcleveland/nirix.users";
    };
    nixos_hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };
    nixpkgs = {
      url = "github:nixos/nixpkgs?ref=25.05";
    };
    swww = {
      url = "github:LGFae/swww";
    };
    walker = {
      url = "github:abenz1267/walker";
    };
    zen_browser = {
      url = "github:0xc000022070/zen-browser-flake";
    };
  };
}
