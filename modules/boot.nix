{ pkgs, ... }: {
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
      grub = {
        enable = true;
        efiSupport = true;
        useOSProber = true;
        device = "nodev";
        splashImage = ./resources/grub/fondo.png;
        font = ./resources/grub/HackNerdFontMono-Regular.ttf;
        fontSize = 48;
      };
    efi.canTouchEfiVariables = true;
    };
  };
}
