{
  lib,
  stdenvNoCC,
  makeWrapper,
  python3,
  shntool,
  cuetools,
  flac,
  coreutils,
}:

stdenvNoCC.mkDerivation {
  pname = "split-the-flac";
  version = "unstable-2026-10-23";

  src = lib.cleanSource ./.;

  nativeBuildInputs = [ makeWrapper ];
  dontBuild = true;

  installPhase = ''
    runHook preInstall

    install -Dm644 split-the-flac "$out/libexec/split-the-flac"
    makeWrapper ${python3}/bin/python3 "$out/bin/split-the-flac" \
      --add-flags "$out/libexec/split-the-flac" \
      --prefix PATH : ${lib.makeBinPath [ shntool cuetools flac coreutils ]}

    runHook postInstall
  '';

  meta = {
    description = "Split (and tag) the FLAC file according to the CUE file";
    homepage = "https://github.com/mikegerber/split-the-flac";
    mainProgram = "split-the-flac";
    platforms = lib.platforms.unix;
  };
}
