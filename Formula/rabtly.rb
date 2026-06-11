class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.077"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.077/rabtly_darwin_arm64"
      sha256 "03dd287c399d56f69909ddbe229996a702190bbbef7600fa5cab62b8265eb1a1" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.077/rabtly_darwin_amd64"
      sha256 "b31d23b7c855ee0ffa667192c8d555e7a90e41bf83fe39457c07c6bd80d83fa4" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end