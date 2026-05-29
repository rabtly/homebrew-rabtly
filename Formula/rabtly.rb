class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.051"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.051/rabtly_darwin_arm64"
      sha256 "a6266826af79cbdd920f56ab42a7760889aa8709c05e852c6dd83159eb2b96f9" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.051/rabtly_darwin_amd64"
      sha256 "577ae1d5708a655d79e7e7f33ee6e4a1a91f2f3a83778b6780276c7ab7352d48" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end