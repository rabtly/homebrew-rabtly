class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.018"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.018/rabtly_darwin_arm64"
      sha256 "197d7e82a62b5a1e88eeaa931fe0e05448f085be7a82c9b426360cf52d4e76b0" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.018/rabtly_darwin_amd64"
      sha256 "4b98c8a3c55ce99f6ac00dfd2a059b462ad3b8ded7eaa65fbe148d95e2561e8a" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end