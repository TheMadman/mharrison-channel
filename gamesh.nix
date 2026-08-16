{ stdenv, cmake, sdl3, libadt, srvsh, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "gamesh";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "gamesh";
		rev = "82fb6ee3fb3a30ed6ee481ed1a2f93ac15112c5d";
		hash = "sha256-dmHCtmbBgzv4eaIXrqcIdgnGHUWYLkfGr+hUkRxh2hk=";
	};
	
	buildInputs = [
		sdl3
		libadt
		srvsh
	];

	propagatedBuildInputs = [srvsh];

	nativeBuildInputs = [cmake];
}
