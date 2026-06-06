class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.069"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.069/rabtly_darwin_arm64"
      sha256 "b267b8f2be158cc9cddbd92dc22b0c64f2584bd7697de419b0b5919b7cd320f5" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.069/rabtly_darwin_amd64"
      sha256 "dda6ddd9f2c1d99c9e272254ceabe1705292826b7a4bc7dfc09918764385d366" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end