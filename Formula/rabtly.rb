class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.9.009"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.9.009/rabtly_darwin_arm64"
      sha256 "7d8f5a69d906a12158ff28d8fa9d4ec1188bdd017415b768810abd4e5b4b4f75" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.9.009/rabtly_darwin_amd64"
      sha256 "ce698dd029265786dc8f8d5c5f62b1fae06b67ed6aed45344033fdff0aef6edb" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end