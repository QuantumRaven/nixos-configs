{ pkgs, ... }:

# Define a user account. Don't forget to set a password with ‘passwd’.
{
  users.users.quantumcrow = {
      isNormalUser = true;
      description = "quantumcrow";
      extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
      packages = with pkgs; [
        alacritty
        discord
        vim
        vscodium
        thunderbird
        librewolf
        spotify
        keepassxc
        joplin-desktop
        zettlr
        jetbrains.pycharm-community
        jetbrains.idea-community
        rofi
        polybar
        maim
        barrier
        xclip
        xdotool
        opera
        pavucontrol
        libreoffice
        arandr
        neofetch
        gimp
        ungoogled-chromium
        obs-studio
        figma-linux
        signal-desktop
        fzf
        clifm
        tmux
        mpv
        telegram-desktop
        dunst
        libnotify
        picom
        feh
        xorg.xprop
      ];
  };



}
