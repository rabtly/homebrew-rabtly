class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.110"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.110/rabtly_darwin_arm64"
      sha256 "2e64dbd950debc8708ed0f3890da585424b5796e10a8b197965cdb90b0ff8e5d" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.110/rabtly_darwin_amd64"
      sha256 "d0e75c91beccffc23c9b7722779cb95e53ba8a631504d935e26cbfe77f5d6021" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end