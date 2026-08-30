{
	system ? builtins.currentSystem,
	nixpkgs ? import <nixpkgs> {inherit system;}
}:
let
	callPackage = nixpkgs.lib.callPackageWith (nixpkgs // mharrison-pkgs);
	mharrison-pkgs = {
		inherit callPackage;

		# Convenience function for fetching stuff
		fetchFromRepo = {
			repo,
			rev,
			hash,
		}@args:
			nixpkgs.fetchFromGitHub ({owner = "TheMadman";} // args);

		gamesh = callPackage ./gamesh.nix {};
		libadt = callPackage ./libadt.nix {};
		scallop-lang = callPackage ./scallop-lang.nix {};
		srvsh = callPackage ./srvsh.nix {};
		srvsh-util = callPackage ./srvsh-util.nix {};
		paint = callPackage ./paint.nix {};
	};
in
mharrison-pkgs
