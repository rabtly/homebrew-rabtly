class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.011"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.011/rabtly_darwin_arm64"
      sha256 "60778d8d258e5f52b1a374956b0860982fee80d7111bbc6d6f9e86b1f34e67dd" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.011/rabtly_darwin_amd64"
      sha256 "601cc5fdbf0d6c7a07804147b01d0ca7b1aad96f928fdfff5f65e0cd3a5aaafc" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end