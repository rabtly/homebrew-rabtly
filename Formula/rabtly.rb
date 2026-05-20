class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.029"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.029/rabtly_darwin_arm64"
      sha256 "9500f412218c8e909c398c84245564c8005497f2cb868d634a0a7f42ee3c308c" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.029/rabtly_darwin_amd64"
      sha256 "1825c13c2f525b843f1b350bd3e496b27c134cf57aab600b2ae52c2b3c69be7b" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end