{ stdenv, gamesh, sdl3, srvsh, libadt, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "paint";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "paint";
		rev = "362eaad37599221cb2b2723cbdb0ecbfd48e8548";
		hash = "sha256-8GD1sMc502UhzfV4fNQhGCfmpH34HTDuEQBFdI4KaVQ=";
	};

	buildInputs = [gamesh sdl3 srvsh libadt];

	makeFlags = [
		"PREFIX=$(out)"
	];
}
