{ stdenv, cmake, sdl3, libadt, srvsh, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "gamesh";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "gamesh";
		rev = "965904871c2293ead5084da25563ef8881a7688a";
		hash = "sha256-5pa7T7cj/CdL3EbYGnQ6boMr5OoJieT7MCdq48FhS9I=";
	};
	
	buildInputs = [
		sdl3
		libadt
		srvsh
	];

	propagatedBuildInputs = [srvsh];

	nativeBuildInputs = [cmake];
}
