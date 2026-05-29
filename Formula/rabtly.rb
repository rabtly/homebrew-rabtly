class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.053"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.053/rabtly_darwin_arm64"
      sha256 "4862c2dee74546a896787d2d3fcbbd5ec0746b1b225e15ca11691050f28f34d0" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.053/rabtly_darwin_amd64"
      sha256 "10d4873a7482560f12cfcf4fb9926dae420518fa87b690197f44ecd564bccaa6" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end