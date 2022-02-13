{
  description = "Kwinft Overlay for nixOS";

  outputs = {
    nixosModules.kwinft = ({ config, pkgs, ... }: {
      nixpkgs.overlays = [
        (import ./overlay.nix)
      ];
    });
  };
}