{
  hardware.pulseaudio.enable = false;
  
  # rtkit is optional but recommended
  # security.rtkit.enable = true;
  
  services.pipewire = {
    enable = true;

    pulse.enable = true; 
    jack.enable = true;

    alsa = {
      enable = true;
      support32Bit = true;
    };
  };
}
