class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.059"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.059/rabtly_darwin_arm64"
      sha256 "2b4e5f76f001166a954065b264ef47229990053a16123dfab682672318422fbe" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.059/rabtly_darwin_amd64"
      sha256 "fd019061b79524fae5f83643273178525ee8aad7bdf881b5ebde7e400b2fb672" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end