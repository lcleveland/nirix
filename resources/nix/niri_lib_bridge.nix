{ inputs, lib, ... }:

let
  # Re-use the helper code from the niri flake
  kdl = import "${inputs.niri}/kdl.nix" { inherit lib; };
  parseBinds = import "${inputs.niri}/parse-binds.nix" { inherit lib kdl; };

  # Pull the default action list out of the Niri source tree
  niriSrc = "${inputs.niri.inputs.niri-unstable or inputs.niri}/";
  actionList = parseBinds niriSrc;
  niriActions = lib.foldl' lib.mergeAttrs { } (map
    ({ name, fn, ... }: { ${name} = fn; })
    actionList);
in
{
  # 👇 make it available system-wide *immediately*
  config.lib.niri.actions = niriActions;
}
