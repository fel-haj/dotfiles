{pkgs, ...}: {
  home.packages = with pkgs; [
    # archives
    zip

    # programming
    go
    nodejs_23
    postgresql_16

    # utils
    nix-prefetch-github
    ripgrep # recursively searches directories for a regex pattern
    fzf # A command-line fuzzy finder

    # theme
    starship

    # misc
    file
    powershell
  ];

  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
      vimAlias = true;
    };

    # A modern replacement for ‘ls’
    eza = {
      enable = true;
      git = true;
      icons = "auto";
      enableZshIntegration = true;
    };

    # terminal file manager
    yazi = {
      enable = true;
      enableZshIntegration = true;
      settings = {
        manager = {
          show_hidden = true;
          sort_dir_first = true;
        };
      };
    };
    go = {
      enable = true;
      goPath = ".go";
    };
  };
}
