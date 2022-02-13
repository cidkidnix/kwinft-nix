self: super: rec {
  kwinft = lib.recurseIntoAttrs (super.callPackage ./kwinft {});
  plasma5Packages = super.plasma5Packages.overrideScope' (p: v: {
    plasma5 = v.plasma5.overrideScope' (final: prev: {
      kwin = kwinft.kwin;
      plasma-workspace = super.plasma5Packages.plasma5.plasma-workspace;
    });
  });
}