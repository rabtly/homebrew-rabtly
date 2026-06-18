class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.092"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.092/rabtly_darwin_arm64"
      sha256 "32e8c85464a2949ab2ee41aba11582097350f10009bfb54818fe28fae8ef70ca" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.092/rabtly_darwin_amd64"
      sha256 "091250f8c37be5443a59732c0b82b9075909b6b0ccaba645d087f5e54f4ba870" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end