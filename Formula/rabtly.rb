class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.094"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.094/rabtly_darwin_arm64"
      sha256 "72c6c777a1ed4f5e6786265beb4944c7b226a116d5fd913dbc0cdbf8ab40131b" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.094/rabtly_darwin_amd64"
      sha256 "dcc03240e3b2b2cfc727516fab5d8bddbc3ae8d2463e5322b83e4e17185f1433" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end