{ stdenv, cmake, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "libadt";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "libadt";
		rev = "d6f57f4b40eb30bd9383ff2c85ec8275bbe7e7a1";
		hash = "sha256-QhXlUy2VQmGyRQfB/200X3EBia+2xTIEIiNGmBp0iII=";
	};

	nativeBuildInputs = [cmake];
}

