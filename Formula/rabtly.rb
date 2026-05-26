class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.047"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.047/rabtly_darwin_arm64"
      sha256 "a62b78188440a4ec05cd2865a1d96932b466f0c3d71b6865bf90439099b03259" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.047/rabtly_darwin_amd64"
      sha256 "155c8a47d08fde7fbb4c6da164313e508c3910a5293393f58a52a96155c88fd9" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end