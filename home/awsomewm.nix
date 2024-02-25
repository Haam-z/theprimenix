{ inputs, outputs, lib, config, pkgs, ... }: {
  xsession.windowManager.awesome.enable = true;
  home.file."awesome" = {
    enable = true;
    source = ./configs/awesomewm;
    target = "~/.config/awesome";
  };
}
