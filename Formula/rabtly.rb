class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.073"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.073/rabtly_darwin_arm64"
      sha256 "1e4a7929117300ed6ab64dafab2cd3fc8c80eae23552eee9632b8f9a62b0899b" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.073/rabtly_darwin_amd64"
      sha256 "27b61e0992dc7f5f171b7d79101dd9d56383d761ebf84d7ae2a99026d98b1a93" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end