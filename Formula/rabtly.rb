class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.016"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.016/rabtly_darwin_arm64"
      sha256 "3a1358f1e57f35fdc1988fb64ae63ef1634347c71d3d5b1632653d1d5e6d956a" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.016/rabtly_darwin_amd64"
      sha256 "a437aee7506bd26bb1bf2ed129ea139503ca5dc76b7534f088a0263026b9b651" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end