class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.9.014"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.9.014/rabtly_darwin_arm64"
      sha256 "7f5633b0f8097e2ac5476916aab0270aeb47d57a82ccdf25600a2a94f7afc1eb" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.9.014/rabtly_darwin_amd64"
      sha256 "31efb80ba510604c2a2c915937b0498f2f54b90fddec35680922b1bc97a290c8" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end