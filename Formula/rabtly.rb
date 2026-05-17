class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.012"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.012/rabtly_darwin_arm64"
      sha256 "5eb4783c9800173ae4c665143a034081c5df75af790f0fe9afce29c99b92c0ef" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.012/rabtly_darwin_amd64"
      sha256 "bcca3bbf60e38ff18049560302a05ef7d609c5ea7735c76dd79e4bdff679bbbf" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end