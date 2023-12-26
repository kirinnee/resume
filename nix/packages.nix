{ pkgs, atomi, atomi_classic, pkgs-2305, pkgs-dec-26-23 }:
let
  all = {
    atomipkgs_classic = (
      with atomi_classic;
      {
        inherit
          sg;
      }
    );
    atomipkgs = (
      with atomi;
      {
        inherit
          infisical
          pls;
      }
    );
    nix-2305 = (
      with pkgs-2305;
      {
        inherit
          hadolint;
      }
    );
    dec-26-23 = (
      with pkgs-dec-26-23;
      {
        inherit
          minio-client
          doppler
          coreutils
          findutils
          sd
          bash
          git
          jq
          yq-go
          texliveFull

          # lint
          treefmt
          gitlint
          shellcheck;

        npm = nodePackages.npm;
        nodejs = nodejs_20;
      }
    );
  };
in
with all;
atomipkgs //
atomipkgs_classic //
nix-2305 //
dec-26-23
