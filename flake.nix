{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/master";

  outputs = { self, nixpkgs }: 
    let 
      aarch64-darwin = import nixpkgs { system = "aarch64-darwin"; };
      aarch64-linux = import nixpkgs { system = "aarch64-linux"; };
      x86_64-linux = import nixpkgs { system = "x86_64-linux"; };

      default = { pkgs } :
        pkgs.rustPlatform.buildRustPackage {
          pname = "nix-ontouchstart-rust-dev";
          version = "0.1.0";
          src = ./.;
          cargoLock.lockFile = ./Cargo.lock;
        };
    in {
      packages.aarch64-darwin.default = default { pkgs = aarch64-darwin; };
      packages.aarch64-linux.default = default { pkgs = aarch64-linux; };
      packages.x86_64-linux.default = default { pkgs = x86_64-linux; };
    };
}

