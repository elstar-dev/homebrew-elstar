cask "elstar" do
  version "1.0.5"
  sha256 "cbbb1165b25f27c1540947068a807b336adfc23626c64d9c2c793cfa1d5270f7"

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
