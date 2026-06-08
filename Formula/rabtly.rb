class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.075"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.075/rabtly_darwin_arm64"
      sha256 "656313c17c6355797183faaaed54543fef59f765da5f1573cdc3b33fbdebb981" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.075/rabtly_darwin_amd64"
      sha256 "4e6b0925c231db0dd67025a5b40e6255818f7ea3f986c027a69f575b8e07b10d" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end