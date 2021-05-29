{ pkgs }:

self: super: {
  zipp = super.zipp.overridePythonAttrs(old: {
    propagatedBuildInputs = old.propagatedBuildInputs ++ [
      self.toml
    ];
  });

  # "MarkupSafe-2.0.1" = pkgs.hello;
  # "markupsafe-2.0.1" = pkgs.hello;

  # shinx = pkgs.hello;

  #   super.shinx.overridePythonAttrs(old: {
  #   propagatedBuildInputs = old.propagatedBuildInputs ++ [
  #     self.pythonPackages.markupsafe self.setuptools
  #   ];
  # });
  #  super.MarkupSafe.overrideAttrs(old: {
  #   src = pkgs.fetchurl {
  #     url = "https://files.pythonhosted.org/packages/bf/10/ff66fea6d1788c458663a84d88787bae15d45daa16f6b3ef33322a51fc7e/MarkupSafe-2.0.1.tar.gz";
  #     sha256 = pkgs.lib.fakeSha256;
  #   }
  # });
}
