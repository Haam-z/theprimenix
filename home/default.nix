{ inputs, outputs, lib, config, pkgs, ... }: {
  imports = [
    ./awsomewm.nix
    ./i3.nix
    ./i3status.nix
    #./netflix.nix
    ./nvim.nix
    #./personal.nix
    #./sway.nix
    ./tmux.nix
    #./tree-sitter.nix
    ./xkb.nix
    ./zsh.nix
  ];
  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;
  home = {
    enableNixpkgsReleaseCheck = false;
    username = "theprimeagen";
    homeDirectory = "/home/theprimeagen";
    stateVersion = "23.11";
    packages = with pkgs; [
      # Add Your Needed Packages here
    ];
  };
  systemd.user.startServices = "sd-switch";
  }
