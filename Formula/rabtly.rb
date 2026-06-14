class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.081"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.081/rabtly_darwin_arm64"
      sha256 "d029a489a0a07eeab4e5f0b3680bed00fe6407b7da2dffb718d29d67c8fb6fa5" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.081/rabtly_darwin_amd64"
      sha256 "97ac7efa050dfcdef7f08ece8922d6215ea0bc2aa309201a1d90f947e324c2c9" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end