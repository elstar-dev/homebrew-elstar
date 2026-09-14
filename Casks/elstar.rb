cask "elstar" do
  version "1.0.10"
  sha256 "017c1d643063f65a3e0b3bb5a66b84671ff15516c694620547fa39f0581791cf"

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
