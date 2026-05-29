class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.052"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.052/rabtly_darwin_arm64"
      sha256 "40fe96f9ff70b649e8021ec9617acffcca918bb50b6677d1594610b00ce23ec7" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.052/rabtly_darwin_amd64"
      sha256 "502fccadcbee1e4b6ddc6a593b3c8eea6a6a8cf186bcdad0c38bd3144e9fef49" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end