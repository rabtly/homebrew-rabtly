class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.087"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.087/rabtly_darwin_arm64"
      sha256 "d1ff6eb583f9178da2c47dbba5aee685a038ce3d0029235268609789ae3f01b3" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.087/rabtly_darwin_amd64"
      sha256 "b7465b71d793bc7f357f60d64b005b188f2380a6f6dc532060a612f38840dd20" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end