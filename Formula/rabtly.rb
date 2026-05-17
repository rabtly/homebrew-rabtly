class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.006"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.006/rabtly_darwin_arm64"
      sha256 "1237e04680d17c3e0ba79168a07c9c8c4f85341d5fdf45497fc85d12c3541f6d" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.006/rabtly_darwin_amd64"
      sha256 "0dd22e755dab680e0fa18ecec3a9358c9601bbf797f811812bf0c6cd53b17583" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end