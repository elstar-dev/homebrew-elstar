cask "elstar" do
  version "1.0.9"
  sha256 "dba185801bff8fe6e6681dcdea6b6f8742f6f190c947c5cb4bf80367058f1296"

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
