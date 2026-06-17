class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.088"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.088/rabtly_darwin_arm64"
      sha256 "011bed2491d1f48ff415780796ac0c1b7a54e49dabc21146a2643250e5aa400b" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.088/rabtly_darwin_amd64"
      sha256 "1277f8a356e80949041fb598944dfa8649803e34ae7932079566d1cd04b5e9e5" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end