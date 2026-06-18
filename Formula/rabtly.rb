class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.089"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.089/rabtly_darwin_arm64"
      sha256 "e0ad2580aa2104cd3d6085aadd3ea5cd9046c9d19c3eec653f1a37cec4fe51f1" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.089/rabtly_darwin_amd64"
      sha256 "30f3ea1c265cb2ae78fea14a2740646816cc678b6aa4d1aef3ccbd9ecbcfb141" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end