all:
	nix develop --command type cargo rustc
	nix run .

