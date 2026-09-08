cask "elstar" do
  version "1.0.8"
  sha256 "09c0d5e65d8e01f5e26e3b457cc39c7107bb2ce7a691603e56279fad4715e3a7"

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
