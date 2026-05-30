class Rabtly < Formula
  desc "Self-hosted mesh VPN built on WireGuard"
  homepage "https://rabtly.cloud"
  version "1.4.10.058"

  on_macos do
    on_arm do
      url "https://dl.rabtly.cloud/v1.4.10.058/rabtly_darwin_arm64"
      sha256 "21358d1d1bd9eb73ffeb248fce598584284ee45bf3a70bbc6cdf421cdc1a8fbc" # arm64
    end
    on_intel do
      url "https://dl.rabtly.cloud/v1.4.10.058/rabtly_darwin_amd64"
      sha256 "72278e1c7e4ee76b5b50d404fef3de485b66e1eda55ada8839a6d72657aba5d0" # amd64
    end
  end

  def install
    bin.install Dir["rabtly*"].first => "rabtly"
  end

  test do
    system "#{bin}/rabtly", "version"
  end
end