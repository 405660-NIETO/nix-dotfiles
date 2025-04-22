{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./packages.nix
      ./modules/audio.nix
      ./modules/bluetooth.nix
      ./modules/boot.nix
      ./modules/environment.nix
      ./modules/files.nix
      ./modules/graphics.nix
      ./modules/greet.nix
      ./modules/hyprland.nix
      ./modules/input.nix
      ./modules/network.nix
      ./modules/users.nix
#      ./modules/xserver.nix
    ];

  # Flatpak temporal
  services.flatpak.enable = true;

  # Time zone
  time.timeZone = "America/Argentina/Cordoba";

  # Locales
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    # font = "ter-v32n";
    keyMap = "la-latin1";
    # useXkbConfig = true; # use xkb.options in tty.
  };

  # configuration.nix backup copy
  system.copySystemConfiguration = true;

  system.stateVersion = "24.11";

}

