class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.098"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.098/rabtly_darwin_arm64"
      sha256 "bd2fe6697d8e6eb8416b3ae2b687ced741ce55ec979853e26e0b53e37d5f50c0" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.098/rabtly_darwin_amd64"
      sha256 "c4cfb3a64c1f3bcbbcee6ca6a37fdc0990b4b36d30797be087c0bf9d332216c5" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end