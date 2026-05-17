class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.014"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.014/rabtly_darwin_arm64"
      sha256 "a04c9e48d9ab721749dc7a5b53690f4071f520685c7486776b40f261f996eee4" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.014/rabtly_darwin_amd64"
      sha256 "3a9694d6b2132d112e9905acbd21d1184f663e1df57c31937d928ea98b9bff58" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end