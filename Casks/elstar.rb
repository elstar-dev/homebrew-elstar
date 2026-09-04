cask "elstar" do
  version "1.0.6"
  sha256 "2526ee207ff5a4b8808e2ad5724aa14371bbcd6e2fccb865fd9d366025552183"

  url "https://github.com/elstar-dev/elstar/releases/download/v#{version}/elstar-#{version}-macos.tar.gz"
  name "elstar"
  desc "iOS Simulator development & automation toolkit"
  homepage "https://elstar.dev"

  depends_on macos: :sequoia # macOS 15+

  binary "elstar"

  caveats <<~EOS
    elstar starts a 7-day trial automatically on first use. To unlock:
      elstar license activate <your-license-key>
    Buy a license or start a trial at https://elstar.dev
  EOS
end
