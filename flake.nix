{
  inputs = {
    openwrt-imagebuilder.url = "github:jfly/nix-openwrt-imagebuilder/issue-26";
  };
  outputs = { self, nixpkgs, openwrt-imagebuilder }: {
    packages.x86_64-linux.my-router =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;

        profiles = openwrt-imagebuilder.lib.profiles { inherit pkgs; };

        image = profiles.identifyProfile "linksys_e8450-ubi";
      in
      openwrt-imagebuilder.lib.build image;
  };
}
