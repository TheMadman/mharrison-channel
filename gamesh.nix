{ stdenv, cmake, sdl3, libadt, srvsh, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "gamesh";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "gamesh";
		rev = "1ec212bf191a0303ee176cb975b5191c4f76fc5f";
		hash = "sha256-8SOXSAnYPa5FrLy0AJHzdzMo0UUg9CvOiXTe+1oW/Os=";
	};
	
	buildInputs = [
		sdl3
		libadt
		srvsh
	];

	propagatedBuildInputs = [srvsh];

	nativeBuildInputs = [cmake];
}
