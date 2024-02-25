{ inputs, outputs, lib, config, pkgs, ... }: {
  programs.zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme =  "robbyrussell";
    };
  };
  home = {
    file."zsh" = {
      enable = true;
      source = ./configs/zsh;
      target = "~/.config/zsh";
    };
  };
}
