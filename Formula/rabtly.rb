class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.027"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.027/rabtly_darwin_arm64"
      sha256 "76c97114c42f9920a91a50aab373af234a831b81fb23cafc7e3b8388c224d220" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.027/rabtly_darwin_amd64"
      sha256 "bf67354affe0d8ffde805bbfde31c8372e885e85fb0d579cdb706cd963e93d4e" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end