{ mkDerivation, base, lib, p2prc }:
mkDerivation {
  pname = "p2prc-hs-orchestrator";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base p2prc ];
  license = "unknown";
}
