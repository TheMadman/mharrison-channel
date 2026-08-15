{ stdenv, cmake, sdl3, libadt, srvsh, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "gamesh";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "gamesh";
		rev = "d3b2d180bc18947819d290ac3b90a37ecbad70af";
		hash = "sha256-31klCehBA+BP08RTcwdvt+TeuL8OitIRUym30xbRYx8=";
	};
	
	buildInputs = [
		sdl3
		libadt
		srvsh
	];

	propagatedBuildInputs = [srvsh];

	nativeBuildInputs = [cmake];
}
