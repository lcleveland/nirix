{ config, inputs, lib, home_manager, ... }:
let
  settings = config.nirix.system;
in
{
  config = {
    home-manager = {
      extraSpecialArgs = {
        inherit inputs;
      };
      useGlobalPkgs = settings.home_manager.use_global_packages;
      useUserPackages = settings.home_manager.use_user_packages;
    };
  };
}
