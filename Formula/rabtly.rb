class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.104"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.104/rabtly_darwin_arm64"
      sha256 "86731398631a45e57ffa754f9d0ddcf4966a96753d83c65b59ecaf55ce8d923b" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.104/rabtly_darwin_amd64"
      sha256 "23260f4213e931fd9bde8b8a29f3c0261c27b1a8c0387c1c29a6ab36c1acef01" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end