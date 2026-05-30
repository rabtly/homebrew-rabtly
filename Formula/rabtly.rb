class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.060"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.060/rabtly_darwin_arm64"
      sha256 "6f2b723882e96823894f5215737bbc50c0f430a797a834d4749c70b7df099a8e" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.060/rabtly_darwin_amd64"
      sha256 "fc9d38b89cbf2c4b0669653746fd2ef8a6d9b9f2c0fc94a3bf1bb899aa7f0d6e" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end