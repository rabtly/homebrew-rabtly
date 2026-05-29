class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.055"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.055/rabtly_darwin_arm64"
      sha256 "2310b0264c78efdc9e077049615e26eb27bf6c6f9dc1614299bf2fa09d9be529" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.055/rabtly_darwin_amd64"
      sha256 "9094e6a00ce5289a7711f21f64fd33d0aadad1a4663b90d87a83fa16d297c169" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end