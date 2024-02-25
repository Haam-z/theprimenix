{ inputs, outputs, lib, config, pkgs, ... }: {
  home = {
    file."xkb" = {
      enable = true;
      source = ./configs/xkb;
      target = "~/.config/xkb";
    };
  };
}
