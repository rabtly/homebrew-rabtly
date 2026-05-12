class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.9.013"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.9.013/rabtly_darwin_arm64"
      sha256 "2b22977afa76e78c365a2282fc4ae04ddbac6cde8703f1bc80cdd3ab36612bb3" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.9.013/rabtly_darwin_amd64"
      sha256 "8403828b07e1f7bae0974c91a4948c96933d4d33c51505ef0c31a81fe90beb2f" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end