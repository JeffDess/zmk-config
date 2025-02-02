{
  description = "ZMK Config development shell";

  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; };

  outputs = { nixpkgs, ... }: {
    devShells.x86_64-linux.default = let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      keymap-drawer_version = "0.20.0";
    in pkgs.mkShell {
      packages = with pkgs; [ python3 uv ];

      shellHook = ''
        uv venv
        source .venv/bin/activate
        uv pip install keymap-drawer==${keymap-drawer_version}
      '';
    };
  };
}

