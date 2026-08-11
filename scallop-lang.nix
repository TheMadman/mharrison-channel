{ stdenv, cmake, libadt, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "scallop-lang";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "scallop-lang";
		rev = "06a53652ab8d41ab264bbe0bb1389831573f450d";
		hash = "sha256-rjilPGDJ9WyGv0Ph3orfXFyn5krCiFYqY9tSZl+9uWE=";
	};

	buildInputs = [libadt];

	nativeBuildInputs = [cmake];
}

