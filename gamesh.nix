{ stdenv, cmake, sdl3, libadt, srvsh, fetchFromRepo }:
stdenv.mkDerivation {
	pname = "gamesh";
	version = "0.0.1";
	src = fetchFromRepo {
		repo = "gamesh";
		rev = "f2491c275c30baea4513dff239e9a24bda85877b";
		hash = "sha256-qFIT4xMilDuX4R7Vwq0qGWH6ylXimFW1CdfDn0284ys=";
	};

	buildInputs = [
		sdl3
		libadt
		srvsh
	];

	propagatedBuildInputs = [srvsh];

	nativeBuildInputs = [cmake];
}
