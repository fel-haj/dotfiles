{ config, pkgs, lib, ... }:

let
  conf = "${config.xdg.configHome}";
  dot = "${config.home.homeDirectory}/Development/dotfiles";
  symlink = config.lib.file.mkOutOfStoreSymlink;
in
{
  home.file = {
    "${conf}/aerospace" = {
      source = symlink "${dot}/aerospace";
    };
    "${conf}/ghostty" = {
      source = symlink "${dot}/ghostty";
    };
    "${conf}/nvim" = {
      source = symlink "${dot}/nvim";
    };
    "${conf}/tmux" = {
      source = symlink "${dot}/tmux";
    };
    "${conf}/starship" = {
      source = symlink "${dot}/starship";
    };
  };
}
