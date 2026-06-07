class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.072"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.072/rabtly_darwin_arm64"
      sha256 "6d78be6f155f901a553eea4cbc41de73f55ee9d952abce3ff585e67a0f1fef13" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.072/rabtly_darwin_amd64"
      sha256 "cf7bfb978019608de91155cbaf3d7869f8f51d4b4d2c88ad6a455b7ed3329c4d" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end