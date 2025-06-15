{ mkDerivation, async, base, lib, p2prc, process }:
mkDerivation {
  pname = "p2prc-hs-orchestrator";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ async base p2prc process ];
  executableHaskellDepends = [ async base p2prc process ];
  license = "unknown";
  mainProgram = "p2prc-hs";
}
