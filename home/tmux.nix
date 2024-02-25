{ inputs, outputs, lib, config, pkgs, ... }: {
  programs.tmux = {
    enable = true;
  };
    home.file."tmux" = {
    enable = true;
    source = ./configs/tmux;
    target = "~/.config/tmux";
  };
}
