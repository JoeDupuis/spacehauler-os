(self: super: {
  spaceTools = {
    fetchNixpkgs  = {commit, sha256}: (import (fetchTarball { name = "nixpkgs"; url = "https://github.com/nixos/nixpkgs/archive/${commit}.tar.gz"; inherit sha256;}) {});
    load-module = {module, packageOverrides ? {}, arguments ? {}} : ((self.callPackage module packageOverrides) arguments);
  };
})
