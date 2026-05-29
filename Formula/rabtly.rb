class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.052"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.052/rabtly_darwin_arm64"
      sha256 "7032277c50d1eddd9719a4e834eb3c11ecc6ab147d77fabbf2c3deb79750e959" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.052/rabtly_darwin_amd64"
      sha256 "4daec5722f58770c1e2cb02b5329a2feabb544e1fec8c0f2f6c56e6dedc1c4a2" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end