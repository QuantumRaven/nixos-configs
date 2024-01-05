{ config, pkgs, ... }:

{
  imports =
    [

      # Include the results of the hardware scan.
      ./hardware-configuration.nix

      # Audio configuration
      ./audio.nix

      # Bash aliases
      ./bash_settings.nix

      # Virtualization - KVM/QEMU
      ./kvm_qemu.nix

      # Network configuration
      ./networking.nix

      # Dedicated GPU
      ./nvidia_gpu.nix

      # Containerization - Podman
      ./podman.nix

      # Gaming - Steamn
      ./steam.nix

      # System packages
      ./system_packages.nix

      # Time configuration
      ./time.nix

      # Tmux
      ./tmux.nix

      # Users on system
      ./users/quantumcrow.nix

      # Xserver settings
      ./xserver.nix

    ];

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/disk/by-id/ata-Samsung_SSD_860_EVO_500GB_S3Z1NB0KA92905X";
  boot.loader.grub.useOSProber = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?


}
