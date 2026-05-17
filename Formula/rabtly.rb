class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.005"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.005/rabtly_darwin_arm64"
      sha256 "e22925e392ab1a17031b26085e4f6917da733f24b3b9a830e9fad97648f99ce3" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.005/rabtly_darwin_amd64"
      sha256 "92e7618b64e7f206693f79c13cb30c48a12a98685c486693c21c7f4744858167" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end