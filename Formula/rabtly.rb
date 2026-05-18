class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.020"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.020/rabtly_darwin_arm64"
      sha256 "5af05e0ba7b0b6d2b3e76ae456d8d42357048db7cbf496fe93b884db2480dd82" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.020/rabtly_darwin_amd64"
      sha256 "e340d097963b3d832fc7e83362b592762a866e15fa32f86a84427aaf49941583" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end