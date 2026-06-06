class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.066"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.066/rabtly_darwin_arm64"
      sha256 "e1059c46636e6e6bd588c205d8703140d0be950454e80332be7e318f4b2f6d37" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.066/rabtly_darwin_amd64"
      sha256 "2d2343da0d19acd8ad14362dd3eb20f0f387ccdf02a897b0237836608c0d6775" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end