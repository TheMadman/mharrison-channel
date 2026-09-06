{ stdenv, fetchFromRepo, srvsh }:
stdenv.mkDerivation {
	pname = "srvsh-util";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "srvsh-util";
		rev = "c7c4411d985b0ea7a2cc27836652ada1b4f9b736";
		hash = "sha256-kAFEgnVdWM97t8fVFBc5dGN50mA8lCjsy+v8DtERwTo=";
	};

	propagatedBuildInputs = [srvsh];

	makeFlags = [
		"prefix=$(out)"
	];
}

