{ config, pkgs, ... }:

{

  # Enable i3 Tiling Window Manager
  services.xserver.windowManager.i3.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable login manager
  services.xserver.displayManager.lightdm.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Load nvidia driver for Xorg and Wayland
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {

  modesetting.enable = true;
  powerManagement.enable = false;
  powerManagement.finegrained = false;
  open = false;
  nvidiaSettings = true;
  package = config.boot.kernelPackages.nvidiaPackages.stable;

  };

}