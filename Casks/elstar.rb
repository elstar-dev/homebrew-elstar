cask "elstar" do
  version "1.0.11"
  sha256 "a530e6533813524a9d153dea146ab9766a2b5bd66aa0f76c6981c0605c06299a"

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
