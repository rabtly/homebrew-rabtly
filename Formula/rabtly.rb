class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.9.006"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.9.006/rabtly_darwin_arm64"
      sha256 "656993a4b543fc4664d3242830ef48ae71fa1eebed422a055427dc2a6532e719" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.9.006/rabtly_darwin_amd64"
      sha256 "ffbd06cca6f544b2b63a1d49bc62cbc4120e64ff03dc80dbb78b24ee50e5dde5" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end