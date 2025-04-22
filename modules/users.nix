{ pkgs, ... }: {

  users.users.neho = {
    isNormalUser = true;
    description = "Neho";
    extraGroups = [ "wheel" "input" "networkmanager" "audio" "video" ];
    packages = with pkgs; [];

  };

  users.users.greeter = {
    isSystemUser = true;
    shell = pkgs.bash;
  };

}
