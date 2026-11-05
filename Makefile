all:
	nix develop --command which cargo rustc
	nix run .
	nix run github:nix-ontouchstart/nix-ontouchstart-rust-dev

