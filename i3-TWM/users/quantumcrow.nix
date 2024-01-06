{ pkgs, ... }:

# Define a user account. Don't forget to set a password with ‘passwd’.
{
  users.users.quantumcrow = {
      isNormalUser = true;
      description = "quantumcrow";
      extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
      hashedPassword = "$6$FYJD72vquzMlXPS2$oml7DmGd4o9LGrCJ1.XkZi1pgjJMlQKueSAm0gHjzxSAczicDsytVWYXtJFQTuY.L7fIsMhEvbjhzfO3R3XF5.";
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
