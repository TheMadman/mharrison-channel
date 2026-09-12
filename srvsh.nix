{ stdenv, cmake, libadt, scallop-lang, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "srvsh";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "srvsh";
		rev = "100d8c91b23e6022de20953ee2f973a0fb32c4df";
		hash = "sha256-8tWYWT0JMPKbbYlxBpQyRb/4Q1mhJt5/vdZhEGh/4uY=";
	};

	buildInputs = [
		libadt
		scallop-lang
	];

	nativeBuildInputs = [cmake];
}

