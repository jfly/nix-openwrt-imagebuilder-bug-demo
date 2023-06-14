
This demonstrates a build error with https://github.com/astro/nix-openwrt-imagebuilder.

    $ nix build .#my-router
    warning: Git tree '/home/jeremy/tmp/nix-openwrt-imagebuilder-bug-demo' is dirty
    error: builder for '/nix/store/bmx7ghl5iz5jb56gzi7y91hj0z9yy5a9-openwrt-23.05.0-rc1-nix-mediatek-mt7622-linksys_e8450-ubi.drv' failed with exit code 2;
           last 10 log lines:
           > Checking 'file'... ok.
           > Checking 'which'... ok.
           > Checking 'ldconfig-stub'... ok.
           >
           > Build dependency: Please install GNU 'coreutils'
           > Build dependency: Please install GNU 'coreutils'
           >
           > Prerequisite check failed. Use FORCE=1 to override.
           > make[1]: *** [Makefile:109: staging_dir/host/.prereq-build] Error 1
           > make: *** [Makefile:259: image] Error 2
           For full logs, run 'nix log /nix/store/bmx7ghl5iz5jb56gzi7y91hj0z9yy5a9-openwrt-23.05.0-rc1-nix-mediatek-mt7622-linksys_e8450-ubi.drv'.
