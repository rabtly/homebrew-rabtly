class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.080"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.080/rabtly_darwin_arm64"
      sha256 "f2bb6f4f552fa10ec928ee7995c3f28d5b523c7033f3f811bfb8a3f106ab4d11" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.080/rabtly_darwin_amd64"
      sha256 "e68b73a767b0c4dd047128d889ebddfe7bde4120d1d743bb1cceda085d466fa9" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end