class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.090"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.090/rabtly_darwin_arm64"
      sha256 "7d204bd3047c324a12ee711e203734431ce278a4d8a296600bca73aba79d82b1" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.090/rabtly_darwin_amd64"
      sha256 "edb3d2674f4eaf915f931bccc9c64606ea9b013605c2319216d746185f8f4642" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end