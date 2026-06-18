class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.091"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.091/rabtly_darwin_arm64"
      sha256 "1f7b5a1a41b3efe1dab2d133a2cb70209e103b650b4fffe45235d38c0598e0c0" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.091/rabtly_darwin_amd64"
      sha256 "3b97433724ee14efc9818488a1706fc4fa1d55eba0388fa0d91168dd62d0e32f" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end