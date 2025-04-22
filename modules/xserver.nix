{
  # Xfce
  services.xserver = {
    enable = true;
    desktopManager = {
      xterm.enable = true;
      xfce.enable = true;
    };
    # xkb = {
    #   layout = "us";
    #   options = "eurosign:e,caps:escape";
    # };
  };
  # Display Manager
  services.displayManager.defaultSession = "xfce";
}
