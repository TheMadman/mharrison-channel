{ stdenv, cmake, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "libadt";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "libadt";
		rev = "6be08777cb39a84e81b74ce1591a74558ae9c630";
		hash = "sha256-+rcZ5+IbsWjD9AjWxEMM3PWLWonPnc25hbk4UPHOtlU=";
	};

	nativeBuildInputs = [cmake];
}

