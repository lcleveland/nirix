{ config, lib, ... }:
{
  options.nirix.system.home_manager = {
    use_user_packages = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Use user packages";
    };
  };
}
