{ pkgs, self, ... }:
{
    system = {
      configurationRevision = self.rev or self.dirtyRev or null;
      stateVersion = 5;

      defaults = {
        dock = {
          autohide = true;
          show-recents = false;
          mru-spaces = false;
          expose-group-apps = true;
        };
        trackpad = {
          Clicking = true;
          TrackpadRightClick = true;
          TrackpadThreeFingerDrag = true;
        };
      };
    };

    security.pam.enableSudoTouchIdAuth = true;

    fonts = {
      packages = with pkgs; [
        # icon fonts
        material-design-icons
        font-awesome

        # nerd fonts 
        nerd-fonts.symbols-only
        nerd-fonts.jetbrains-mono
      ];
    };
}
