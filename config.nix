{ pkgs, ... }:

{
  nix = {
    package = pkgs.nix.override {
      allowUnfree = true;
    };
  };
}
