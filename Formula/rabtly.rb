class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.093"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.093/rabtly_darwin_arm64"
      sha256 "ffa29eb911abdc474509c9e4206110c38b215263d1cafba594501e84076fac68" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.093/rabtly_darwin_amd64"
      sha256 "0dd0518e45c3069ff9437ed4b6941a2e40d6d9b32a48cd78c8b29a73962283fd" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end