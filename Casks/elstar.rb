cask "elstar" do
  version "1.0.1"
  sha256 "39bc471d0ec53ab7e6dc0828520b3bf2265ef8dd21223d6c9610a467506c2389"

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
