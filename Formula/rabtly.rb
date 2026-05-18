class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.015"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.015/rabtly_darwin_arm64"
      sha256 "69d7347a492f614546c429146ef9cc34fb9d351f8f6a907a1e485e221633b1fa" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.015/rabtly_darwin_amd64"
      sha256 "ee7c09e9eb0d11317babb1f5acb27e6c0c3846747731e3ac7b997fd12137c3b0" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end