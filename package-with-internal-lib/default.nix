{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "package-with-internal-lib";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base ];
  license = stdenv.lib.licenses.bsd3;
  doHaddock = false; # https://github.com/haskell/cabal/issues/1919
}
