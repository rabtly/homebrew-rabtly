class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.061"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.061/rabtly_darwin_arm64"
      sha256 "6e40ec5c0572eae67100025660509dc4fb254a5d950e2f0c11a11199f3e19f9a" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.061/rabtly_darwin_amd64"
      sha256 "fca9a7349b8a597a59c6ad2f299b2b67f2958315a2b6d3afcd218d66b8c5213e" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end