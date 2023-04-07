{
	pkgs ? import <nixpkgs> {}
}:
pkgs.buildPackages.nginx
