cask "elstar" do
  version "1.0.7"
  sha256 "bf57322f42d6bbd6cb609cfcf5b681f29ca452841a02c66f7907efeac2ba2a05"

  url "https://github.com/elstar-dev/elstar/releases/download/v#{version}/elstar-#{version}-macos.tar.gz"
  name "elstar"
  desc "iOS Simulator development & automation toolkit"
  homepage "https://elstar.dev"

  depends_on macos: :sequoia # macOS 15+

  binary "elstar"

  caveats <<~EOS
    Activate your elstar license:
      elstar license activate <your-license-key>
    Get a license at https://elstar.dev
  EOS
end
