# nix-ontouchstart/nix-ontouchstart-rust-dev

```
nix develop
```

```
nix build
```

```
nix run
```

```
nix run github:nix-ontouchstart/nix-ontouchstart-rust-dev
```

```make
all:
	nix develop --command which cargo rustc
	nix run .
	nix run github:nix-ontouchstart/nix-ontouchstart-rust-dev
```
