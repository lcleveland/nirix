{ config, lib, home_manager, ... }:
{
  config = {
    home-manager.useUserPackages = config.nirix.system.home_manager.use_user_packages;
  };
}
