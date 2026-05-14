class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.003"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.003/rabtly_darwin_arm64"
      sha256 "c84015755616eaee105e03d407761617bfb959ed5d7615079c87fbedeabf67a2" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.003/rabtly_darwin_amd64"
      sha256 "507c8d5afcf6a9e1e0cf37c6c56e1553728ba342693e90722490f1e89e016efb" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end