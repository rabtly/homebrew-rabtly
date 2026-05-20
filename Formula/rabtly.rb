class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.028"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.028/rabtly_darwin_arm64"
      sha256 "40f0d466c10a9c1bab668b8b4984e9bc2d73540cf6c5c885cc08accde093de76" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.028/rabtly_darwin_amd64"
      sha256 "26f4b574f4082e635badda5e018a49aa037b2b2e1f2d918e961a8d45ca7db10d" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end