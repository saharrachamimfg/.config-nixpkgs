{ lib, pkgs, ... }:

{
  home = {
    # Home Manager needs a bit of information about you and the
    # paths it should manage.
    username = "sahar";
    homeDirectory = "/home/saharrachamim";

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "21.11";

    # Packages that should be installed to the user profile.
    packages = [
      pkgs.fnm
      pkgs.google-chrome
      pkgs.nerdfonts
      pkgs.ripgrep
      pkgs.scrot
      pkgs.soco-cli
      pkgs.speedtest-cli
      pkgs.spotify
      pkgs.xclip
    ];

    activation = {
    #   bitDefender = lib.hm.dag.entryAfter ["writeBoundary"] (builtins.replaceStrings ["TARBALL"] [(builtins.toString ./activation/bitDefender.sh.d/installer.tar)] (builtins.readFile ./activation/bitDefender.sh));
    #   jumpCloud = lib.hm.dag.entryAfter ["writeBoundary"] (builtins.readFile ./activation/jumpCloud.sh);
    };

    file = {
      "tmuxinator-fg.yaml" = {
        source = ./file/tmuxinator/fg.yaml;
        target = ".config/tmuxinator/fg.yaml";
      };
      "Xclients" = {
        source = ./file/.Xclients;
        target = ".Xclients";
      };
    };

    sessionVariables = {
      CLICOLOR_FORCE = "true";
      EDITOR = "vim";
      FZF_DEFAULT_COMMAND = "rg --files --follow --hidden";
      LANG = "en_GB.UTF-8";
      LC_ALL = "en_GB.UTF-8";
      LC_CTYPE = "en_GB.UTF-8";
      VISUAL = "vim";
    };
  };

  imports = [
    ./fonts.nix
    ./gtk.nix
    ./keyboard.nix
    ./nixpkgs.nix
    ./programs.nix
    ./targets.nix
    ./xdg.nix
    ./xsession.nix
  ];
}
