{ stdenv, cmake, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "libadt";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "libadt";
		rev = "c8491c5c9a7398854078c0ba3b821931f39645ae";
		hash = "sha256-6c+vUYye9s2YZFEgOLorr9znUfV6acqi8Q9s16tQxOQ=";
	};

	nativeBuildInputs = [cmake];
}

