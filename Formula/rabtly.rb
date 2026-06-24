class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.107"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.107/rabtly_darwin_arm64"
      sha256 "1bbefffb32ffa28f792ef464e6ab360cb44fb7d30858f97f524ba9ef5c2968db" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.107/rabtly_darwin_amd64"
      sha256 "1cf81ff86d7780cdc659701507eef433f1f67fd6baa214911b3ea45c5619f225" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end