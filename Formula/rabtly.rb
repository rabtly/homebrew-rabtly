class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.035"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.035/rabtly_darwin_arm64"
      sha256 "2ccd1b1cb0ae13235ab2f29e2fc1893ae8970021225f59a9b4f91746600266eb" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.035/rabtly_darwin_amd64"
      sha256 "4bab2d4ec21c3bcbc56f2e165527920ef0ba0205a403dcb22b1872085b6aa5dc" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end