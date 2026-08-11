{ stdenv, cmake, sdl3, libadt, srvsh, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "gamesh";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "gamesh";
		rev = "e3092518d52a58ec6f1aaa9ea45269e5ffd103d8";
		hash = "sha256-earIZucAMGGcBgZoPQnMKk3hLmUQ07GkqH+FoTY9kyc=";
	};
	
	buildInputs = [
		sdl3
		libadt
		srvsh
	];

	propagatedBuildInputs = [srvsh];

	nativeBuildInputs = [cmake];
}
