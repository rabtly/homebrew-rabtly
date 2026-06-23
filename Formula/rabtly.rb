class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.100"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.100/rabtly_darwin_arm64"
      sha256 "de3adb0124313d124a8fdc407c1fbaf5b23ef9c44a1cb165883719b52be6e122" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.100/rabtly_darwin_amd64"
      sha256 "e00076688b308581f1b81ce36e04db5e2946639ea85b4c22a3949dd03b8baf5f" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end