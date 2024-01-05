{ config, pkgs, ... }:

{

# Virtualization - KVM/QEMU

  # Enable KVM/QEMU
  virtualisation.libvirtd.enable = true;
  programs.dconf.enable = true; # virt-manager requires dconf to remember settings
  virtualisation.libvirtd.qemu.runAsRoot = false;

}