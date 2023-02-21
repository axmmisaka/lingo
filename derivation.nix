{ naersk, src, lib, pkg-config, cmake, zlib, openssl }:

naersk.buildPackage {
  pname = "lingo";
  version = "0.1.0";

  src = ./.;

  cargoSha256 = lib.fakeSha256;

  nativeBuildInputs = [ pkg-config cmake ];
  buildInputs = [ zlib openssl ];

  meta = with lib; {
    description = "Simple package manager for lingua franca";
    homepage = "https://github.com/lf-lang/lingo";
  };
}
