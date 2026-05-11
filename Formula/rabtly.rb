class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.9.007"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.9.007/rabtly_darwin_arm64"
      sha256 "3ecb75dc5df8d496a70667ddcd48ab84c76afd7bd07194051c2d578ee5f5467e" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.9.007/rabtly_darwin_amd64"
      sha256 "65af97709c6553fcec0bbf974687e2b87e3e97c4f4b0dfeb07851bade9a20a26" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end