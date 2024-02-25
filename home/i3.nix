{ inputs, outputs, lib, config, pkgs, ... }: {
  xsession.windowManager.i3.enable = true;
  home.file."i3" = {
    enable = true;
    source = ./configs/i3wm;
    target = "~/.config/i3";
  };
}
