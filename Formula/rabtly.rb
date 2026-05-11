class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.9.008"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.9.008/rabtly_darwin_arm64"
      sha256 "18941b6cd353f3625d92198247c2fcc30cd4afeb1c21ab68571ee013ba8317a3" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.9.008/rabtly_darwin_amd64"
      sha256 "6f14334b2041a7ac46b4575e16eb133149209d6347b5d5ba149c432c1a46f21e" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end