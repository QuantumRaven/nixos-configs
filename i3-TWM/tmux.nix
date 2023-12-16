{ config, pkgs, ... }:

{

# Terminal Multiplexing

  # tmux
  programs.tmux = {
    enable = true;

  # Configuration options

  extraConfigBeforePlugins = ''

  # Keybinds
  bind-key C-b send-prefix

  # Enable mouse support
  set -g mouse on

  '';

};

}