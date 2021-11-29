{ ... }:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;
    envExtra = builtins.readFile ./zsh.nix.d/env.zsh;
    shellAliases = {
      condownfg = "nmcli con down sahar.rachamim@fundguard.com.fundguard.dev";
      constfg = "nmcli con | grep fundguard";
      conupfg = "nmcli con up sahar.rachamim@fundguard.com.fundguard.dev";
      mux = "tmuxinator";
      pbcopy = "xclip -selection clipboard";
      pbpaste = "xclip -selection clipboard -o";
      s = "sonos";
      sa = "sonos _all_";
      sb = "sonos 'Bathroom'";
      sd = "sonos-discover";
      sl = "sonos 'Living Room'";
    };
  };
}
