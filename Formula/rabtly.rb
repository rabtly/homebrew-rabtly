class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.007"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.007/rabtly_darwin_arm64"
      sha256 "97b2c3b65c2860d1f995840403603f5e7c1d79ac18394b33129e37c99b529ff7" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.007/rabtly_darwin_amd64"
      sha256 "5f165d807beee1fad33b759ae74e927d35ac0e8fa2e4fb4b152d5631b2064817" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end