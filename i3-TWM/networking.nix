{ config, pkgs, ... }:

{

  networking.hostName = "milkyway"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Enable network manager applet
  programs.nm-applet.enable = true;

   # Enable the OpenSSH daemon.
   services.openssh.enable = true;

   # Firewall Port Management
   # networking.firewall.allowedTCPPorts = [ ... ];
   # networking.firewall.allowedUDPPorts = [ ... ];
   # Or disable the firewall altogether.
   networking.firewall = {
     enable = true;
     allowedTCPPorts = [ 8100 ];
   # allowedUDPPorts = [ ... ]

 };

   networking.nftables.enable = true;

}