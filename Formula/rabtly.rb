class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.101"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.101/rabtly_darwin_arm64"
      sha256 "8754fef665ebd76d25de22b1caff8d7afba27d622c13286725060aeca9cceb73" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.101/rabtly_darwin_amd64"
      sha256 "7c8caa1b7d6ec370c349dc297c5ee22298e4d5687e55bc41361f1409a97dd56e" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end