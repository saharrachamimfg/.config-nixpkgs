{ pkgs, ... }:

{
  programs.tmux = {
    baseIndex = 1;
    enable = true;
    keyMode = "vi";
    plugins = with pkgs.tmuxPlugins; [
      nord
      pain-control
      yank
    ];
    sensibleOnTop = true;
    shell = "${pkgs.zsh}/bin/zsh";
    terminal = "screen-256color";
    tmuxinator.enable = true;
  };
}
