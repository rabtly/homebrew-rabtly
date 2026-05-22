class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.038"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.038/rabtly_darwin_arm64"
      sha256 "a86f25eeeb565d095282a3494d77ccd6178f25759281149fe4d28627cce69249" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.038/rabtly_darwin_amd64"
      sha256 "a6eb7bd417a7d6cf1e01dd63f56ff9a657e1c996d4ef7e27bb38cb4a35d0aef6" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end