{ pkgs, packages }:
with packages;
{
  system = [
    coreutils
    findutils
    sd
    bash
    jq
    yq-go
  ];

  dev = [
    pls
    git
    doppler
    infisical
  ];

  main = [
    texliveFull
    minio-client
    infisical
  ];

  lint = [
    # core
    treefmt
    gitlint
    shellcheck
    sg
  ];

  ci = [

  ];

  releaser = [
    nodejs
    sg
    npm
  ];

}
