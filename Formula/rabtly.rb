class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.008"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.008/rabtly_darwin_arm64"
      sha256 "64c46e982d91a368d53f70920daebc4e42130c9a295d85fa8d9aa570715a9aca" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.008/rabtly_darwin_amd64"
      sha256 "2e6c29657f6dca75ba8c9b565b50ff8ea4200eab3f361bafe9ad7796d8d9b1e8" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end