{ pkgs, ... }:

{
  programs.neovim.coc = {
    enable = true;
    settings = {
      "eslint.autoFixOnSave" = true;
      "tsserver.enableJavascript" = false;
    };
  };
}
