class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.054"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.054/rabtly_darwin_arm64"
      sha256 "efaedcb2e3869530f920b2e498e5373cb96506978f4de9b474d3f9b59729962e" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.054/rabtly_darwin_amd64"
      sha256 "157906ad2487c0b1fffd288ae96aeb1bb83eb46ea2595837e54d2e7205df7337" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end