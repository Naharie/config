{
  inputs
,  ...
}:

{
  imports = [ inputs.nix-index-database.nixosModules.nix-index ];

  programs.command-not-found.enable = false;
  programs.nix-index-database.comma.enable = true;

  programs.nix-index.enable = true;
  programs.nix-index.enableBashIntegration = true;
}