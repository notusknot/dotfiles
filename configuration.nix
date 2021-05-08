{ config, pkgs, ... }:

{
  imports = [ ./hardware-configuration.nix <home-manager/nixos> ];
  
  # Home manager
  home-manager.users.notus = { imports = [ /etc/nixos/home.nix ]; };
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
  };

  # Auto updates
  system.autoUpgrade.enable = true;

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.cleanTmpDir = true;
  
  # Basic networking stuff
  networking.hostName = "nixos";
  networking.wireless.userControlled.enable = true;
  networking.useDHCP = false;
  networking.interfaces.enp0s25.useDHCP = true;
  networking.interfaces.wlp3s0.useDHCP = true;

  # Localizations and stuff
  time.timeZone = "America/Los_Angeles";
  i18n.defaultLocale = "en_US.UTF-8";
  services.xserver.layout = "us";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  # Xorg settings (lightdm, bspwm, trackpad)
  services.xserver.enable = true;
  services.xserver.libinput.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.windowManager = {
    bspwm.enable = true;
  };

  # Enable sound
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Set up user
  users.users.notus = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };

  # Install packages
  environment.systemPackages = with pkgs; [
    bspwm sxhkd dmenu feh polybar picom nordic # Rice/desktop
    zsh pfetch htop wget vim gnupg pass playerctl python2 python3 git cargo rustc# CLI/terminal
    rxvt-unicode spotify vscodium firefox pcmanfm lxappearance mullvad-vpn # Applications
  ];
  nixpkgs.config.allowUnfree = true;

  # Install Ioveska nerd font
  fonts.fonts = with pkgs; [
    nerdfonts
    (nerdfonts.override { fonts = [ "Iosevka" ]; })
  ];
  
  # System version
  system.stateVersion = "20.09"; # Did you read the comment?
}

