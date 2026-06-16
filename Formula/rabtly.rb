class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.083"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.083/rabtly_darwin_arm64"
      sha256 "4cb945a6a9736f95bef36e249f5dad2b08f30ddb49785f8de1323cb1b92b3f7b" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.083/rabtly_darwin_amd64"
      sha256 "89eab00b1f4a7e142ec5852350348ec94b0eb7b4565a69442c293111f5fc50ac" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end