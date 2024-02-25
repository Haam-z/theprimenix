{ inputs, outputs, fetchFromGitHub , lib, config, pkgs, ... }: {
  home = {
    packages = [ pkgs.tree-sitter ];
    file."tree-sitter" = {
      enable = true;
      source = ./configs/tree-sitter;
      target = "~/.config/tree-sitter";
    };

    file."tree-sitter-lua" = {
      enable = true;
      source = fetchFromGitHub {
        owner = "Azganoth";
        repo = "tree-sitter-lua";
        rev = "v2.1.3";
        sha256 = "0000000000000000000000000000000000000000000000000000";
      } ;
      target = "~/.config/tree-sitter/tree-sitter-lua";
    };
  };
}
