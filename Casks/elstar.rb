cask "elstar" do
  version "1.0.2"
  sha256 "42e0f4d116813cf89563f005ffe6196048aecb6acce4e7efb1a44a62f88f6baf"

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
