{ inputs, outputs, lib, config, pkgs, ... }: {
  home = {
    file."netflix" = {
      enable = true;
      source = fetchFromGitHub {
        owner = "ThePrimeagen";
        repo = ".dotfiles-netflix";
        sha256 = "0000000000000000000000000000000000000000000000000000";
      } ;
      target = "~/netflix";
    };
  };
}
