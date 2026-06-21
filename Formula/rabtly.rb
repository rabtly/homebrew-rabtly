class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.096"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.096/rabtly_darwin_arm64"
      sha256 "9d5f6ffcc9b091d3783f75c974cdccd33c8d41426118de5c9c910732ea64c91a" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.096/rabtly_darwin_amd64"
      sha256 "4a368d2e99d4dcb3776baf8f61f351be2e2dc62750ab980b64003252446856c4" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end