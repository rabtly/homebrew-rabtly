class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.9.011"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.9.011/rabtly_darwin_arm64"
      sha256 "87a929af343cb972d5842e15434c8cd3b093cab6599dfb9cea32683f715191cb" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.9.011/rabtly_darwin_amd64"
      sha256 "8274b7cfbe2448abe0996c5a7d9fdc1e5bb7f8828066703774ef3eb66fde4440" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end