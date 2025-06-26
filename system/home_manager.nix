{ config, lib, home_manager, ... }:
{
  config = {
    home-manager = {
      useGlobalPkgs = config.nirix.system.home_manager.use_global_packages;
      useUserPackages = config.nirix.system.home_manager.use_user_packages;
    };
  };
}
