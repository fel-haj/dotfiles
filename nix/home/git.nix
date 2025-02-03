{
  lib,
  username,
  useremail,
  ...
}: {
  # `programs.git` will generate the config file: ~/.config/git/config
  # to make git use this config file, `~/.gitconfig` should not exist!
  #
  #    https://git-scm.com/docs/git-config#Documentation/git-config.txt---global
  home.activation.removeExistingGitconfig = lib.hm.dag.entryBefore ["checkLinkTargets"] ''
    rm -f ~/.gitconfig
  '';

  programs.git = {
    enable = true;

    # [l]arge [f]ile [s]torage
    # see https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage
    lfs.enable = true;

    userName = username;
    userEmail = useremail;

    extraConfig = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
      pull.rebase = true;
    };

    # Syntax highlighting
    delta = {
      enable = true;
      options = {
        features = "side-by-side";
      };
    };

    aliases = {
    };
  };
}
