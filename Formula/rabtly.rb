class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.045"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.045/rabtly_darwin_arm64"
      sha256 "becd191085b63d01cb0cc89fc4c422143f16d4ab64e9f1d8a52a830c209fb3f2" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.045/rabtly_darwin_amd64"
      sha256 "61d9b5e7cd225496aed2376079cf8e881a8b13c70858e32558f425627c6b1765" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end