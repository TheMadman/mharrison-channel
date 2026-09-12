{ stdenv, cmake, libadt, scallop-lang, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "srvsh";
	version = "0.0.1";

	src = fetchFromRepo {
		repo = "srvsh";
		rev = "d56e47fdf76a11fab027e2f19f7be1969335252b";
		hash = "sha256-k6g7JKToRds5kvMMRGqGcVRHSL7hiS8XWaK93e0BUDo=";
	};

	buildInputs = [
		libadt
		scallop-lang
	];

	nativeBuildInputs = [cmake];
}

