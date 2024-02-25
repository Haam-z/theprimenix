{ inputs, outputs, lib, config, pkgs, ... }: {
  home = {
    file."personal" = {
      enable = true;
      source = fetchFromGitHub {
        owner = "ThePrimeagen";
        repo = ".dotfiles-personal";
        sha256 = "0000000000000000000000000000000000000000000000000000";
      } ;
      target = "~/personal";
    };
  };
}
