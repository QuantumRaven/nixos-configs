{ config, pkgs, ... }:

{

# GPU Driver Setup

  # Enable NVIDIA drivers

  # Enable OpenGL
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
};

}