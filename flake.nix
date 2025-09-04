{
  outputs = inputs@{nixpkgs, ...}: let
    inherit (nixpkgs) lib;
    forAllSystems = f: lib.genAttrs (import inputs.systems) (system: f {
      pkgs = nixpkgs.legacyPackages.${system};
      inherit system;
    });
  in {
    packages = forAllSystems ({pkgs, ...}: {
      default = (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = [
          ./nvf.nix
        ];
	extraSpecialArgs = { inherit (inputs) basix; };
      }).neovim;
    });
  };

  inputs = {
    nixpkgs = {
      type = "github";
      owner = "nixos";
      repo = "nixpkgs";
      ref = "nixos-unstable";
    };
    systems = {
      type = "github";
      owner = "nix-systems";
      repo = "default";
    };
    nvf = {
      type = "github";
      owner = "notashelf";
      repo = "nvf";
      inputs = {
        nixpkgs.follows = "nixpkgs";
	systems.follows = "systems";
      };
    };
    basix = {
      type = "github";
      owner = "notashelf";
      repo = "basix";
      inputs = {
        nixpkgs.follows = "nixpkgs";
      };
    };
  };
}
