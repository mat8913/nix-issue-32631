{ mkDerivation, base, package-with-internal-lib, stdenv }:
mkDerivation {
  pname = "test-user";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base package-with-internal-lib ];
  license = stdenv.lib.licenses.bsd3;
}
