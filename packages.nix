{ pkgs, ... }: {
   
  nixpkgs.config = {
    allowUnfree = true;
    joypixels.acceptLicense = true;
  };

  environment.systemPackages = with pkgs; [
    # Paquetes base y cosas del sistema.
    wget
    curl
    nano
    unzip
    zip


    # Drivers, mantenimiento del sistema.
    pciutils
    usbutils
    util-linux
    dmidecode
    inxi
    mesa-demos
    lm_sensors
    clinfo
    vulkan-tools
    libva-utils
    bluez
    bluez-tools   

    # CLIs.
    yazi
    file
    git
    htop
    btop

    # CLI herramientas
    yt-dlp
    tree
    fzf
    scrot
    mediainfo
    ffmpeg
    ntfs3g
    brightnessctl
    feh

    # CLI varios
    neofetch
    fastfetch
    pfetch
    nitch
    sl
    fortune
    cowsay
    cbonsai
    cmatrix
    pipes
    cava
    lolcat
    lavat
    figlet
    asciiquarium
    toilet
    hollywood
    tty-clock

    # Aplicaciones de escritorio.
    firefox
    telegram-desktop
    mpv
    vesktop
    gparted
    obsidian
    
    # Wayland
    xwayland
    wl-clipboard
    # cliphist
    greetd.tuigreet

    # Sonido
    pipewire
    pamixer
    
    # File manager    
    pcmanfm
    lxmenu-data
    shared-mime-info
    gvfs
    ffmpegthumbnailer

    # Hyprland
    kitty
    xdg-desktop-portal-hyprland
    waybar
    wofi
    dunst
    grip
    slurp
    wlogout
    wpaperd
    pavucontrol
    wttrbar
    playerctl
    networkmanagerapplet
    hyprpicker
    hyprpolkitagent
    hyprshot

    # GTK/QT Config y Temas
    libsForQt5.qt5ct
    qt6ct
    adw-gtk3
    adwaita-qt
    papirus-icon-theme
    gnome-themes-extra
    gnome-tweaks
    materia-theme
    adapta-gtk-theme
    whitesur-icon-theme
    whitesur-gtk-theme
    vimix-gtk-themes
    tokyonight-gtk-theme
    tela-icon-theme
    tela-circle-icon-theme
    numix-icon-theme
    zafiro-icons
    bibata-cursors
    capitaine-cursors
    capitaine-cursors-themed
    catppuccin-gtk
    catppuccin-qt5ct

  ];

  fonts.packages = with pkgs; [
    joypixels
    nerdfonts
    noto-fonts
    font-awesome
    powerline-fonts
    powerline-symbols
  ];
}
