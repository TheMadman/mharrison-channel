{ stdenv, cmake, libadt, scallop-lang, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "srvsh";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "srvsh";
		rev = "0c5d1694cdbf0649927038ec489d7fccc56978e6";
		hash = "sha256-K6YtUMlsHwe+LdF/ZME20oV1cth8xYMQLTqtjEKzRA8=";
	};

	buildInputs = [
		libadt
		scallop-lang
	];

	nativeBuildInputs = [cmake];
}

