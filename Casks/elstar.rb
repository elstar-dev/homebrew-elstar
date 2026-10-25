cask "elstar" do
  version "1.1.0"
  sha256 "3ee35a88a759abbd176be3930cdc1a74f2097ae88c964acb892f59fd49e367fd"

  url "https://github.com/elstar-dev/elstar/releases/download/v#{version}/elstar-#{version}-macos.tar.gz"
  name "elstar"
  desc "iOS Simulator development & automation toolkit"
  homepage "https://elstar.dev"

  depends_on macos: :sequoia # macOS 15+

  binary "elstar"

  caveats <<~EOS
    Your 7-day trial starts automatically on first use. After the trial, activate:
      elstar license activate <your-license-key>
    Get a license at https://elstar.dev
  EOS
end
