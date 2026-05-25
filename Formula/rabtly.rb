class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.042"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.042/rabtly_darwin_arm64"
      sha256 "39b5b18623dbdeef53e6d4ab4426c896d300400bfc38fa0c3d0170f11ce84296" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.042/rabtly_darwin_amd64"
      sha256 "4ab32963bc519ede19e93a52bf0951add4c49e565227746dc0653406b495c55d" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end