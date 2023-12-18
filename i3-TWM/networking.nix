{ config, pkgs, ... }:

{

  networking.hostName = "milkyway"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  # Enable network manager applet
  programs.nm-applet.enable = true;

   # Enable the OpenSSH daemon.
   services.openssh.enable = true;

   # Firewall Port Management
   networking.firewall = {
     enable = true;
     allowedTCPPorts = [ 8100 ];
   # allowedUDPPorts = [ ... ]

 };

   networking.nftables.enable = true;

   networking.interfaces.eno1.useDHCP = false;
   networking.bridges.br0 = {
     interfaces = [ "eno1" ];
   };

}