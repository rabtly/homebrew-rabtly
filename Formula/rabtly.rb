class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.109"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.109/rabtly_darwin_arm64"
      sha256 "2c974c3b355e9f0886fa6909c717fdf5a91fb7db8d3e1f6ee1491427d152b15a" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.109/rabtly_darwin_amd64"
      sha256 "ce2b15994d99eec9a84ea4e2ca853d5643abb65612e5e4cd5050633bc8ab0cd7" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end