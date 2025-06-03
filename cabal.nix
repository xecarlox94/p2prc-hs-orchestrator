{ mkDerivation, base, p2prc }:
mkDerivation {
  pname = "p2prc-hs-orchestrator";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = false;
  libraryHaskellDepends = [ base p2prc ];
  doHaddock = false;
  license = "unknown";
}
