{ config, lib, ... }:
{
  options.nirix.system.home_manager = {
    use_global_packages = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Use global packages";
    };
    use_user_packages = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Use user packages";
    };
  };
}
