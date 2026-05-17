class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.009"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.009/rabtly_darwin_arm64"
      sha256 "8ac6fdad31d3623245634071d25bebd70103aaf037232bb25959dd475bd3aa07" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.009/rabtly_darwin_amd64"
      sha256 "2dfa46fa110834195989b478247f9855ed580902dd23ba605ab55c034f50b8a9" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end