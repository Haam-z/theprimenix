{ inputs, outputs, lib, config, pkgs, ... }: {
  programs.i3status.enable = true;
  home.file."i3status" = {
    enable = true;
    source = ./configs/i3status;
    target = "~/.config/i3status";
  };
}
