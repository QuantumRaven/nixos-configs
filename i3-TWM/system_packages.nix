{ config, pkgs, ... }:

{

  # Automatic updates

    # Auto system update
    system.autoUpgrade = {
      enable = true;
    };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
      ansible
      ansible-lint
      terraform
      terraform-docs
      i3
      git
      virt-manager
      btop
      helvum
      python312
      ffmpeg
      buildah
      skopeo
      conmon
      podman-compose
      sshpass
      syncthing
      wget2
      cargo
];

  # Enable Version Control System

    # Enable git
    programs.git.enable = true;

}