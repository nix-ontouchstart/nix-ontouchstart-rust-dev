all:
	nix develop --command type cargo rustc
	nix run .
	nix run github:nix-ontouchstart/nix-ontouchstart-rust-dev

