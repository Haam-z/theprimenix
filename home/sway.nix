{ inputs, outputs, lib, config, pkgs, ... }: {
  wayland.windowManager.sway = {
    enable = true;
  };
    home = {
    file."sway" = {
      enable = true;
      source = ./configs/sway;
      target = "~/.config/sway";
    };
  };
}
