{ system
, ...
}:

{
  system.stateVersion = "23.05";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.hostPlatform = system;

  nixpkgs.config.permittedInsecurePackages = [
    # For Rider
    "dotnet-sdk-7.0.410"
    "dotnet-runtime-6.0.36"
    "dotnet-runtime-wrapped-6.0.36"
    "dotnet-sdk-6.0.428"
    "dotnet-sdk-wrapped-6.0.428"
  ];
}